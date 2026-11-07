.class public interface abstract Lcom/android/internal/pm/pkg/component/ParsedComponent;
.super Ljava/lang/Object;
.source "ParsedComponent.java"


# virtual methods
.method public abstract blacklist getBanner()I
.end method

.method public abstract blacklist getComponentName()Landroid/content/ComponentName;
.end method

.method public abstract blacklist getDescriptionRes()I
.end method

.method public abstract blacklist getFlags()I
.end method

.method public abstract blacklist getIcon()I
.end method

.method public abstract blacklist getIntents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getLabelRes()I
.end method

.method public abstract blacklist getLogo()I
.end method

.method public abstract blacklist getMetaData()Landroid/os/Bundle;
.end method

.method public abstract blacklist getName()Ljava/lang/String;
.end method

.method public abstract blacklist getNonLocalizedLabel()Ljava/lang/CharSequence;
.end method

.method public abstract blacklist getPackageName()Ljava/lang/String;
.end method

.method public abstract blacklist getProperties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageManager$Property;",
            ">;"
        }
    .end annotation
.end method
