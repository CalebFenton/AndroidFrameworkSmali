.class public final Ldalvik/bytecode/OpcodeInfo;
.super Ljava/lang/Object;
.source "OpcodeInfo.java"


# static fields
.field public static final MAXIMUM_PACKED_VALUE:I

.field public static final MAXIMUM_VALUE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 55
    const v0, 0xffff

    #@3
    sput v0, Ldalvik/bytecode/OpcodeInfo;->MAXIMUM_VALUE:I

    #@5
    .line 56
    const/16 v0, 0xff

    #@7
    sput v0, Ldalvik/bytecode/OpcodeInfo;->MAXIMUM_PACKED_VALUE:I

    #@9
    .line 22
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isInvoke(I)Z
    .locals 1
    .param p0, "packedOpcode"    # I

    #@0
    .prologue
    .line 65
    const/4 v0, 0x0

    #@1
    return v0
.end method
