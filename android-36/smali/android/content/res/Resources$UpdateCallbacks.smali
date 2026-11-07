.class public interface abstract Landroid/content/res/Resources$UpdateCallbacks;
.super Ljava/lang/Object;
.source "Resources.java"

# interfaces
.implements Landroid/content/res/loader/ResourcesLoader$UpdateCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateCallbacks"
.end annotation


# virtual methods
.method public abstract blacklist onLoadersChanged(Landroid/content/res/Resources;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Landroid/content/res/loader/ResourcesLoader;",
            ">;)V"
        }
    .end annotation
.end method
