.class public final enum Landroid/icu/util/BytesTrie$Result;
.super Ljava/lang/Enum;
.source "BytesTrie.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/BytesTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/BytesTrie$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/BytesTrie$Result;

.field public static final enum FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

.field public static final enum INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

.field public static final enum NO_MATCH:Landroid/icu/util/BytesTrie$Result;

.field public static final enum NO_VALUE:Landroid/icu/util/BytesTrie$Result;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x2

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 128
    new-instance v0, Landroid/icu/util/BytesTrie$Result;

    #@6
    const-string/jumbo v1, "NO_MATCH"

    #@9
    invoke-direct {v0, v1, v2}, Landroid/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    #@c
    .line 135
    sput-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@e
    .line 136
    new-instance v0, Landroid/icu/util/BytesTrie$Result;

    #@10
    const-string/jumbo v1, "NO_VALUE"

    #@13
    invoke-direct {v0, v1, v3}, Landroid/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    #@16
    .line 142
    sput-object v0, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@18
    .line 143
    new-instance v0, Landroid/icu/util/BytesTrie$Result;

    #@1a
    const-string/jumbo v1, "FINAL_VALUE"

    #@1d
    invoke-direct {v0, v1, v4}, Landroid/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    #@20
    .line 150
    sput-object v0, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@22
    .line 151
    new-instance v0, Landroid/icu/util/BytesTrie$Result;

    #@24
    const-string/jumbo v1, "INTERMEDIATE_VALUE"

    #@27
    invoke-direct {v0, v1, v5}, Landroid/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    #@2a
    .line 158
    sput-object v0, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@2c
    .line 127
    const/4 v0, 0x4

    #@2d
    new-array v0, v0, [Landroid/icu/util/BytesTrie$Result;

    #@2f
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@31
    aput-object v1, v0, v2

    #@33
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@35
    aput-object v1, v0, v3

    #@37
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@39
    aput-object v1, v0, v4

    #@3b
    sget-object v1, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    #@3d
    aput-object v1, v0, v5

    #@3f
    sput-object v0, Landroid/icu/util/BytesTrie$Result;->$VALUES:[Landroid/icu/util/BytesTrie$Result;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/BytesTrie$Result;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    const-class v0, Landroid/icu/util/BytesTrie$Result;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/util/BytesTrie$Result;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/util/BytesTrie$Result;
    .locals 1

    #@0
    .prologue
    .line 127
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->$VALUES:[Landroid/icu/util/BytesTrie$Result;

    #@2
    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 184
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie$Result;->ordinal()I

    #@4
    move-result v1

    #@5
    and-int/lit8 v1, v1, 0x1

    #@7
    if-eqz v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public hasValue()Z
    .locals 2

    #@0
    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie$Result;->ordinal()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x2

    #@5
    if-lt v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public matches()Z
    .locals 1

    #@0
    .prologue
    .line 169
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    #@2
    if-eq p0, v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method
