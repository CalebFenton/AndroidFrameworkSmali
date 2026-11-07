.class abstract Landroid/icu/impl/ICUResourceBundle$Loader;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Loader"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/impl/ICUResourceBundle-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundle$Loader;-><init>()V

    return-void
.end method


# virtual methods
.method abstract greylist-max-o load()Landroid/icu/impl/ICUResourceBundle;
.end method
