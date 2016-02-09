.class Ljava/net/URI$PartEncoder;
.super Llibcore/net/UriCodec;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PartEncoder"
.end annotation


# instance fields
.field private final extraLegalCharacters:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "extraLegalCharacters"    # Ljava/lang/String;

    #@0
    .prologue
    .line 168
    invoke-direct {p0}, Llibcore/net/UriCodec;-><init>()V

    #@3
    .line 169
    iput-object p1, p0, Ljava/net/URI$PartEncoder;->extraLegalCharacters:Ljava/lang/String;

    #@5
    .line 168
    return-void
.end method


# virtual methods
.method protected isRetained(C)Z
    .locals 4
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    .line 173
    const-string/jumbo v2, "_-!.~\'()*"

    #@6
    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    #@9
    move-result v2

    #@a
    if-ne v2, v3, :cond_0

    #@c
    .line 174
    const-string/jumbo v2, ",;:$&+="

    #@f
    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    #@12
    move-result v2

    #@13
    if-eq v2, v3, :cond_2

    #@15
    :cond_0
    move v0, v1

    #@16
    .line 173
    :cond_1
    :goto_0
    return v0

    #@17
    .line 175
    :cond_2
    iget-object v2, p0, Ljava/net/URI$PartEncoder;->extraLegalCharacters:Ljava/lang/String;

    #@19
    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(I)I

    #@1c
    move-result v2

    #@1d
    if-ne v2, v3, :cond_0

    #@1f
    .line 176
    const/16 v2, 0x7f

    #@21
    if-le p1, v2, :cond_1

    #@23
    invoke-static {p1}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@26
    move-result v2

    #@27
    if-nez v2, :cond_1

    #@29
    invoke-static {p1}, Ljava/lang/Character;->isISOControl(C)Z

    #@2c
    move-result v2

    #@2d
    if-nez v2, :cond_1

    #@2f
    move v0, v1

    #@30
    goto :goto_0
.end method
