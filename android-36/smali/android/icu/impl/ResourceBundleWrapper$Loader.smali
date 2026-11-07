.class abstract Landroid/icu/impl/ResourceBundleWrapper$Loader;
.super Ljava/lang/Object;
.source "ResourceBundleWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ResourceBundleWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Loader"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/ResourceBundleWrapper-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/ResourceBundleWrapper$Loader;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist load()Landroid/icu/impl/ResourceBundleWrapper;
.end method
