.class Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;
.super Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
.source "TextUtilsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/TextUtilsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextUtilsCompatJellybeanMr1Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 100
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>(Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;)V

    #@4
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    .line 108
    invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompatJellybeanMr1;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    #@0
    .prologue
    .line 103
    invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompatJellybeanMr1;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
