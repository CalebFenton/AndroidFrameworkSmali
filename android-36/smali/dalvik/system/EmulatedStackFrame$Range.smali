.class public final Ldalvik/system/EmulatedStackFrame$Range;
.super Ljava/lang/Object;
.source "EmulatedStackFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/EmulatedStackFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Range"
.end annotation


# static fields
.field private static blacklist EMPTY_RANGE:Ldalvik/system/EmulatedStackFrame$Range;


# instance fields
.field public final greylist-max-o numBytes:I

.field public final greylist-max-o numReferences:I

.field public final greylist-max-o referencesStart:I

.field public final greylist-max-o stackFrameStart:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 102
    new-instance v0, Ldalvik/system/EmulatedStackFrame$Range;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Ldalvik/system/EmulatedStackFrame$Range;-><init>(IIII)V

    sput-object v0, Ldalvik/system/EmulatedStackFrame$Range;->EMPTY_RANGE:Ldalvik/system/EmulatedStackFrame$Range;

    return-void
.end method

.method private constructor greylist-max-o <init>(IIII)V
    .registers 5
    .param p1, "referencesStart"    # I
    .param p2, "numReferences"    # I
    .param p3, "stackFrameStart"    # I
    .param p4, "numBytes"    # I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Ldalvik/system/EmulatedStackFrame$Range;->referencesStart:I

    .line 106
    iput p2, p0, Ldalvik/system/EmulatedStackFrame$Range;->numReferences:I

    .line 107
    iput p3, p0, Ldalvik/system/EmulatedStackFrame$Range;->stackFrameStart:I

    .line 108
    iput p4, p0, Ldalvik/system/EmulatedStackFrame$Range;->numBytes:I

    .line 109
    return-void
.end method

.method public static greylist-max-o all(Ljava/lang/invoke/MethodType;)Ldalvik/system/EmulatedStackFrame$Range;
    .registers 3
    .param p0, "frameType"    # Ljava/lang/invoke/MethodType;

    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v1

    invoke-static {p0, v0, v1}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist from(Ljava/lang/invoke/MethodType;I)Ldalvik/system/EmulatedStackFrame$Range;
    .registers 3
    .param p0, "frameType"    # Ljava/lang/invoke/MethodType;
    .param p1, "startArg"    # I

    .line 160
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v0

    invoke-static {p0, p1, v0}, Ldalvik/system/EmulatedStackFrame$Range;->of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o of(Ljava/lang/invoke/MethodType;II)Ldalvik/system/EmulatedStackFrame$Range;
    .registers 11
    .param p0, "frameType"    # Ljava/lang/invoke/MethodType;
    .param p1, "startArg"    # I
    .param p2, "endArg"    # I

    .line 124
    if-lt p1, p2, :cond_5

    .line 125
    sget-object v0, Ldalvik/system/EmulatedStackFrame$Range;->EMPTY_RANGE:Ldalvik/system/EmulatedStackFrame$Range;

    return-object v0

    .line 128
    :cond_5
    const/4 v0, 0x0

    .line 129
    .local v0, "referencesStart":I
    const/4 v1, 0x0

    .line 130
    .local v1, "numReferences":I
    const/4 v2, 0x0

    .line 131
    .local v2, "stackFrameStart":I
    const/4 v3, 0x0

    .line 133
    .local v3, "numBytes":I
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    .line 134
    .local v4, "ptypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_e
    if-ge v5, p1, :cond_23

    .line 135
    aget-object v6, v4, v5

    .line 136
    .local v6, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_1b

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 139
    :cond_1b
    invoke-static {v6}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v7

    add-int/2addr v2, v7

    .line 134
    .end local v6    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 143
    .end local v5    # "i":I
    :cond_23
    move v5, p1

    .restart local v5    # "i":I
    :goto_24
    if-ge v5, p2, :cond_39

    .line 144
    aget-object v6, v4, v5

    .line 145
    .restart local v6    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_31

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 148
    :cond_31
    invoke-static {v6}, Ldalvik/system/EmulatedStackFrame;->getSize(Ljava/lang/Class;)I

    move-result v7

    add-int/2addr v3, v7

    .line 143
    .end local v6    # "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 152
    .end local v5    # "i":I
    :cond_39
    new-instance v5, Ldalvik/system/EmulatedStackFrame$Range;

    invoke-direct {v5, v0, v1, v2, v3}, Ldalvik/system/EmulatedStackFrame$Range;-><init>(IIII)V

    return-object v5
.end method
