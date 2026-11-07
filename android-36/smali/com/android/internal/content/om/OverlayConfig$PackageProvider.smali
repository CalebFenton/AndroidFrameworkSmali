.class public interface abstract Lcom/android/internal/content/om/OverlayConfig$PackageProvider;
.super Ljava/lang/Object;
.source "OverlayConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackageProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;
    }
.end annotation


# virtual methods
.method public abstract blacklist forEachPackage(Lcom/android/internal/util/function/TriConsumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;",
            "Ljava/lang/Boolean;",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation
.end method
