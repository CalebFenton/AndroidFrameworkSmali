.class public Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;
.super Ljava/lang/Object;
.source "EmbeddedPhotoPickerProviderFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory;-><init>()V

    return-void
.end method

.method public static whitelist create(Landroid/content/Context;)Landroid/widget/photopicker/EmbeddedPhotoPickerProvider;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 76
    new-instance v0, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory$RuntimeEmbeddedPhotoPickerProvider;-><init>(Landroid/content/Context;Landroid/widget/photopicker/EmbeddedPhotoPickerProviderFactory-IA;)V

    return-object v0
.end method


# virtual methods
.method blacklist onSessionClosed(Landroid/widget/photopicker/EmbeddedPhotoPickerClient;)V
    .registers 2
    .param p1, "client"    # Landroid/widget/photopicker/EmbeddedPhotoPickerClient;

    .line 69
    return-void
.end method
