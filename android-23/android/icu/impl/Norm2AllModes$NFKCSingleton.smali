.class final Landroid/icu/impl/Norm2AllModes$NFKCSingleton;
.super Ljava/lang/Object;
.source "Norm2AllModes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Norm2AllModes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NFKCSingleton"
.end annotation


# static fields
.field private static final INSTANCE:Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;


# direct methods
.method static synthetic -get0()Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/impl/Norm2AllModes$NFKCSingleton;->INSTANCE:Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 382
    new-instance v0, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    #@2
    const-string/jumbo v1, "nfkc"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-direct {v0, v1, v2}, Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;-><init>(Ljava/lang/String;Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;)V

    #@9
    sput-object v0, Landroid/icu/impl/Norm2AllModes$NFKCSingleton;->INSTANCE:Landroid/icu/impl/Norm2AllModes$Norm2AllModesSingleton;

    #@b
    .line 381
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
