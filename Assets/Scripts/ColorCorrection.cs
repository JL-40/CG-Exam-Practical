using UnityEngine;

public class ColorCorrection : MonoBehaviour
{
    // Reference to the material with the LUT shader
    public Material lutMaterial;
    void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        if (lutMaterial != null)
        {
            Graphics.Blit(source, destination, lutMaterial);
        }
        else
        {
            Graphics.Blit(source, destination);
        }
    }
}
