.class public Landroid/text/method/HideReturnsTransformationMethod;
.super Landroid/text/method/ReplacementTransformationMethod;
.source "HideReturnsTransformationMethod.java"


# static fields
.field private static greylist-max-o ORIGINAL:[C

.field private static greylist-max-o REPLACEMENT:[C

.field private static greylist-max-p sInstance:Landroid/text/method/HideReturnsTransformationMethod;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 30
    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/16 v3, 0xd

    aput-char v3, v1, v2

    sput-object v1, Landroid/text/method/HideReturnsTransformationMethod;->ORIGINAL:[C

    .line 31
    new-array v0, v0, [C

    const v1, 0xfeff

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/method/HideReturnsTransformationMethod;->REPLACEMENT:[C

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    return-void
.end method

.method public static whitelist getInstance()Landroid/text/method/HideReturnsTransformationMethod;
    .registers 1

    .line 48
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    if-eqz v0, :cond_7

    .line 49
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    return-object v0

    .line 51
    :cond_7
    new-instance v0, Landroid/text/method/HideReturnsTransformationMethod;

    invoke-direct {v0}, Landroid/text/method/HideReturnsTransformationMethod;-><init>()V

    sput-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    .line 52
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    return-object v0
.end method


# virtual methods
.method protected whitelist getOriginal()[C
    .registers 2

    .line 37
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->ORIGINAL:[C

    return-object v0
.end method

.method protected whitelist getReplacement()[C
    .registers 2

    .line 44
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->REPLACEMENT:[C

    return-object v0
.end method
