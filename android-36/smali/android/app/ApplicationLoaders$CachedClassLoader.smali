.class Landroid/app/ApplicationLoaders$CachedClassLoader;
.super Ljava/lang/Object;
.source "ApplicationLoaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationLoaders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedClassLoader"
.end annotation


# instance fields
.field blacklist loader:Ljava/lang/ClassLoader;

.field blacklist sharedLibraries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ApplicationLoaders-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/ApplicationLoaders$CachedClassLoader;-><init>()V

    return-void
.end method
