.class public Landroid/text/method/HideReturnsTransformationMethod;
.super Landroid/text/method/ReplacementTransformationMethod;
.source "HideReturnsTransformationMethod.java"


# static fields
.field private static ORIGINAL:[C

.field private static REPLACEMENT:[C

.field private static sInstance:Landroid/text/method/HideReturnsTransformationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 26
    new-array v0, v3, [C

    #@4
    const/16 v1, 0xd

    #@6
    aput-char v1, v0, v2

    #@8
    sput-object v0, Landroid/text/method/HideReturnsTransformationMethod;->ORIGINAL:[C

    #@a
    .line 27
    new-array v0, v3, [C

    #@c
    const v1, 0xfeff

    #@f
    aput-char v1, v0, v2

    #@11
    sput-object v0, Landroid/text/method/HideReturnsTransformationMethod;->REPLACEMENT:[C

    #@13
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Landroid/text/method/ReplacementTransformationMethod;-><init>()V

    #@3
    return-void
.end method

.method public static getInstance()Landroid/text/method/HideReturnsTransformationMethod;
    .locals 1

    #@0
    .prologue
    .line 44
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 45
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    #@6
    return-object v0

    #@7
    .line 47
    :cond_0
    new-instance v0, Landroid/text/method/HideReturnsTransformationMethod;

    #@9
    invoke-direct {v0}, Landroid/text/method/HideReturnsTransformationMethod;-><init>()V

    #@c
    sput-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    #@e
    .line 48
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->sInstance:Landroid/text/method/HideReturnsTransformationMethod;

    #@10
    return-object v0
.end method


# virtual methods
.method protected getOriginal()[C
    .locals 1

    #@0
    .prologue
    .line 33
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->ORIGINAL:[C

    #@2
    return-object v0
.end method

.method protected getReplacement()[C
    .locals 1

    #@0
    .prologue
    .line 40
    sget-object v0, Landroid/text/method/HideReturnsTransformationMethod;->REPLACEMENT:[C

    #@2
    return-object v0
.end method
