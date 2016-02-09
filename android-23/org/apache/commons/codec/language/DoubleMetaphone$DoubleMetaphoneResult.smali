.class public Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;
.super Ljava/lang/Object;
.source "DoubleMetaphone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/codec/language/DoubleMetaphone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DoubleMetaphoneResult"
.end annotation


# instance fields
.field private alternate:Ljava/lang/StringBuffer;

.field private maxLength:I

.field private primary:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lorg/apache/commons/codec/language/DoubleMetaphone;


# direct methods
.method public constructor <init>(Lorg/apache/commons/codec/language/DoubleMetaphone;I)V
    .locals 2
    .param p1, "this$0"    # Lorg/apache/commons/codec/language/DoubleMetaphone;
    .param p2, "maxLength"    # I

    #@0
    .prologue
    .line 1041
    iput-object p1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->this$0:Lorg/apache/commons/codec/language/DoubleMetaphone;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1037
    new-instance v0, Ljava/lang/StringBuffer;

    #@7
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->this$0:Lorg/apache/commons/codec/language/DoubleMetaphone;

    #@9
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    #@c
    move-result v1

    #@d
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@10
    iput-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    #@12
    .line 1038
    new-instance v0, Ljava/lang/StringBuffer;

    #@14
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->this$0:Lorg/apache/commons/codec/language/DoubleMetaphone;

    #@16
    invoke-virtual {v1}, Lorg/apache/commons/codec/language/DoubleMetaphone;->getMaxCodeLen()I

    #@19
    move-result v1

    #@1a
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@1d
    iput-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    #@1f
    .line 1042
    iput p2, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    #@21
    .line 1041
    return-void
.end method


# virtual methods
.method public append(C)V
    .locals 0
    .param p1, "value"    # C

    #@0
    .prologue
    .line 1046
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    #@3
    .line 1047
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    #@6
    .line 1045
    return-void
.end method

.method public append(CC)V
    .locals 0
    .param p1, "primary"    # C
    .param p2, "alternate"    # C

    #@0
    .prologue
    .line 1051
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(C)V

    #@3
    .line 1052
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(C)V

    #@6
    .line 1050
    return-void
.end method

.method public append(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1068
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(Ljava/lang/String;)V

    #@3
    .line 1069
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(Ljava/lang/String;)V

    #@6
    .line 1067
    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "primary"    # Ljava/lang/String;
    .param p2, "alternate"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1073
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendPrimary(Ljava/lang/String;)V

    #@3
    .line 1074
    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->appendAlternate(Ljava/lang/String;)V

    #@6
    .line 1072
    return-void
.end method

.method public appendAlternate(C)V
    .locals 2
    .param p1, "value"    # C

    #@0
    .prologue
    .line 1062
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1063
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@f
    .line 1061
    :cond_0
    return-void
.end method

.method public appendAlternate(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1087
    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    #@2
    iget-object v2, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    #@4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    #@7
    move-result v2

    #@8
    sub-int v0, v1, v2

    #@a
    .line 1088
    .local v0, "addChars":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    if-gt v1, v0, :cond_0

    #@10
    .line 1089
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 1086
    :goto_0
    return-void

    #@16
    .line 1091
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    #@18
    const/4 v2, 0x0

    #@19
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    goto :goto_0
.end method

.method public appendPrimary(C)V
    .locals 2
    .param p1, "value"    # C

    #@0
    .prologue
    .line 1056
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    #@8
    if-ge v0, v1, :cond_0

    #@a
    .line 1057
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@f
    .line 1055
    :cond_0
    return-void
.end method

.method public appendPrimary(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1078
    iget v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    #@2
    iget-object v2, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    #@4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    #@7
    move-result v2

    #@8
    sub-int v0, v1, v2

    #@a
    .line 1079
    .local v0, "addChars":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    if-gt v1, v0, :cond_0

    #@10
    .line 1080
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    .line 1077
    :goto_0
    return-void

    #@16
    .line 1082
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    #@18
    const/4 v2, 0x0

    #@19
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@20
    goto :goto_0
.end method

.method public getAlternate()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1100
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getPrimary()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1096
    iget-object v0, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isComplete()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1104
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->primary:Ljava/lang/StringBuffer;

    #@3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    #@6
    move-result v1

    #@7
    iget v2, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    #@9
    if-lt v1, v2, :cond_0

    #@b
    .line 1105
    iget-object v1, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->alternate:Ljava/lang/StringBuffer;

    #@d
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    #@10
    move-result v1

    #@11
    iget v2, p0, Lorg/apache/commons/codec/language/DoubleMetaphone$DoubleMetaphoneResult;->maxLength:I

    #@13
    if-lt v1, v2, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    .line 1104
    :cond_0
    return v0
.end method
