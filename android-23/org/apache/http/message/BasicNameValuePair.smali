.class public Lorg/apache/http/message/BasicNameValuePair;
.super Ljava/lang/Object;
.source "BasicNameValuePair.java"

# interfaces
.implements Lorg/apache/http/NameValuePair;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 124
    if-nez p1, :cond_0

    #@5
    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Name may not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 127
    :cond_0
    iput-object p1, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    #@10
    .line 128
    iput-object p2, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    #@12
    .line 122
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 172
    if-nez p1, :cond_0

    #@3
    return v1

    #@4
    .line 173
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    const/4 v1, 0x1

    #@7
    return v1

    #@8
    .line 174
    :cond_1
    instance-of v2, p1, Lorg/apache/http/NameValuePair;

    #@a
    if-eqz v2, :cond_3

    #@c
    move-object v0, p1

    #@d
    .line 175
    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    #@f
    .line 176
    .local v0, "that":Lorg/apache/http/message/BasicNameValuePair;
    iget-object v2, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    #@11
    iget-object v3, v0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 177
    iget-object v1, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    #@1b
    iget-object v2, v0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    #@1d
    invoke-static {v1, v2}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@20
    move-result v1

    #@21
    .line 176
    :cond_2
    return v1

    #@22
    .line 179
    .end local v0    # "that":Lorg/apache/http/message/BasicNameValuePair;
    :cond_3
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 184
    const/16 v0, 0x11

    #@2
    .line 185
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@7
    move-result v0

    #@8
    .line 186
    iget-object v1, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    #@a
    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    #@d
    move-result v0

    #@e
    .line 187
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 158
    iget-object v2, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    .line 159
    .local v1, "len":I
    iget-object v2, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 160
    iget-object v2, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    #@c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@f
    move-result v2

    #@10
    add-int/lit8 v2, v2, 0x1

    #@12
    add-int/2addr v1, v2

    #@13
    .line 161
    :cond_0
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    #@15
    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    #@18
    .line 163
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v2, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    #@1a
    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@1d
    .line 164
    iget-object v2, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    #@1f
    if-eqz v2, :cond_1

    #@21
    .line 165
    const-string/jumbo v2, "="

    #@24
    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@27
    .line 166
    iget-object v2, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    #@29
    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    #@2c
    .line 168
    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    #@2f
    move-result-object v2

    #@30
    return-object v2
.end method
