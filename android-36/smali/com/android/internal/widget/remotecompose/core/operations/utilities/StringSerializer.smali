.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;
.super Ljava/lang/Object;
.source "StringSerializer.java"


# instance fields
.field blacklist mBuffer:Ljava/lang/StringBuffer;

.field blacklist mIndentBuffer:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->mBuffer:Ljava/lang/StringBuffer;

    .line 25
    const-string v0, "                                                                      "

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->mIndentBuffer:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist append(ILjava/lang/String;)V
    .registers 6
    .param p1, "indent"    # I
    .param p2, "content"    # Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->mIndentBuffer:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "indentation":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 38
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 39
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->mBuffer:Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    return-void
.end method

.method public blacklist reset()V
    .registers 2

    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->mBuffer:Ljava/lang/StringBuffer;

    .line 45
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
