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
        "Ljava/lang/Enum<",
        "Landroid/icu/util/BytesTrie$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/icu/util/BytesTrie$Result;

.field public static final enum greylist-max-o FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

.field public static final enum greylist-max-o INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

.field public static final enum greylist-max-o NO_MATCH:Landroid/icu/util/BytesTrie$Result;

.field public static final enum greylist-max-o NO_VALUE:Landroid/icu/util/BytesTrie$Result;


# direct methods
.method private static synthetic blacklist $values()[Landroid/icu/util/BytesTrie$Result;
    .registers 4

    .line 169
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    sget-object v1, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    sget-object v2, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    sget-object v3, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    filled-new-array {v0, v1, v2, v3}, [Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 176
    new-instance v0, Landroid/icu/util/BytesTrie$Result;

    const-string v1, "NO_MATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    .line 182
    new-instance v0, Landroid/icu/util/BytesTrie$Result;

    const-string v1, "NO_VALUE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/BytesTrie$Result;->NO_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 189
    new-instance v0, Landroid/icu/util/BytesTrie$Result;

    const-string v1, "FINAL_VALUE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 196
    new-instance v0, Landroid/icu/util/BytesTrie$Result;

    const-string v1, "INTERMEDIATE_VALUE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/icu/util/BytesTrie$Result;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/BytesTrie$Result;->INTERMEDIATE_VALUE:Landroid/icu/util/BytesTrie$Result;

    .line 169
    invoke-static {}, Landroid/icu/util/BytesTrie$Result;->$values()[Landroid/icu/util/BytesTrie$Result;

    move-result-object v0

    sput-object v0, Landroid/icu/util/BytesTrie$Result;->$VALUES:[Landroid/icu/util/BytesTrie$Result;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o valueOf(Ljava/lang/String;)Landroid/icu/util/BytesTrie$Result;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 169
    const-class v0, Landroid/icu/util/BytesTrie$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/icu/util/BytesTrie$Result;

    return-object v0
.end method

.method public static greylist-max-o values()[Landroid/icu/util/BytesTrie$Result;
    .registers 1

    .line 169
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->$VALUES:[Landroid/icu/util/BytesTrie$Result;

    invoke-virtual {v0}, [Landroid/icu/util/BytesTrie$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/BytesTrie$Result;

    return-object v0
.end method


# virtual methods
.method public greylist-max-o hasNext()Z
    .registers 3

    .line 219
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie$Result;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method public greylist-max-o hasValue()Z
    .registers 3

    .line 213
    invoke-virtual {p0}, Landroid/icu/util/BytesTrie$Result;->ordinal()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public greylist-max-o matches()Z
    .registers 2

    .line 206
    sget-object v0, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-eq p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
