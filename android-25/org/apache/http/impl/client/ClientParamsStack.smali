.class public Lorg/apache/http/impl/client/ClientParamsStack;
.super Lorg/apache/http/params/AbstractHttpParams;
.source "ClientParamsStack.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field protected final applicationParams:Lorg/apache/http/params/HttpParams;

.field protected final clientParams:Lorg/apache/http/params/HttpParams;

.field private final log:Lorg/apache/commons/logging/Log;

.field protected final overrideParams:Lorg/apache/http/params/HttpParams;

.field protected final requestParams:Lorg/apache/http/params/HttpParams;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/ClientParamsStack;)V
    .locals 4
    .param p1, "stack"    # Lorg/apache/http/impl/client/ClientParamsStack;

    #@0
    .prologue
    .line 127
    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getApplicationParams()Lorg/apache/http/params/HttpParams;

    #@3
    move-result-object v0

    #@4
    .line 128
    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getClientParams()Lorg/apache/http/params/HttpParams;

    #@7
    move-result-object v1

    #@8
    .line 129
    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getRequestParams()Lorg/apache/http/params/HttpParams;

    #@b
    move-result-object v2

    #@c
    .line 130
    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getOverrideParams()Lorg/apache/http/params/HttpParams;

    #@f
    move-result-object v3

    #@10
    .line 127
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/http/impl/client/ClientParamsStack;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    #@13
    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/client/ClientParamsStack;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V
    .locals 0
    .param p1, "stack"    # Lorg/apache/http/impl/client/ClientParamsStack;
    .param p2, "aparams"    # Lorg/apache/http/params/HttpParams;
    .param p3, "cparams"    # Lorg/apache/http/params/HttpParams;
    .param p4, "rparams"    # Lorg/apache/http/params/HttpParams;
    .param p5, "oparams"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 150
    if-eqz p2, :cond_0

    #@2
    .line 151
    .end local p2    # "aparams":Lorg/apache/http/params/HttpParams;
    :goto_0
    if-eqz p3, :cond_1

    #@4
    .line 152
    .end local p3    # "cparams":Lorg/apache/http/params/HttpParams;
    :goto_1
    if-eqz p4, :cond_2

    #@6
    .line 153
    .end local p4    # "rparams":Lorg/apache/http/params/HttpParams;
    :goto_2
    if-eqz p5, :cond_3

    #@8
    .line 150
    .end local p5    # "oparams":Lorg/apache/http/params/HttpParams;
    :goto_3
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/http/impl/client/ClientParamsStack;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V

    #@b
    .line 149
    return-void

    #@c
    .line 150
    .restart local p2    # "aparams":Lorg/apache/http/params/HttpParams;
    .restart local p3    # "cparams":Lorg/apache/http/params/HttpParams;
    .restart local p4    # "rparams":Lorg/apache/http/params/HttpParams;
    .restart local p5    # "oparams":Lorg/apache/http/params/HttpParams;
    :cond_0
    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getApplicationParams()Lorg/apache/http/params/HttpParams;

    #@f
    move-result-object p2

    #@10
    goto :goto_0

    #@11
    .line 151
    .end local p2    # "aparams":Lorg/apache/http/params/HttpParams;
    :cond_1
    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getClientParams()Lorg/apache/http/params/HttpParams;

    #@14
    move-result-object p3

    #@15
    goto :goto_1

    #@16
    .line 152
    .end local p3    # "cparams":Lorg/apache/http/params/HttpParams;
    :cond_2
    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getRequestParams()Lorg/apache/http/params/HttpParams;

    #@19
    move-result-object p4

    #@1a
    goto :goto_2

    #@1b
    .line 153
    .end local p4    # "rparams":Lorg/apache/http/params/HttpParams;
    :cond_3
    invoke-virtual {p1}, Lorg/apache/http/impl/client/ClientParamsStack;->getOverrideParams()Lorg/apache/http/params/HttpParams;

    #@1e
    move-result-object p5

    #@1f
    goto :goto_3
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "aparams"    # Lorg/apache/http/params/HttpParams;
    .param p2, "cparams"    # Lorg/apache/http/params/HttpParams;
    .param p3, "rparams"    # Lorg/apache/http/params/HttpParams;
    .param p4, "oparams"    # Lorg/apache/http/params/HttpParams;

    #@0
    .prologue
    .line 110
    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    #@3
    .line 85
    invoke-virtual {p0}, Lorg/apache/http/impl/client/ClientParamsStack;->getClass()Ljava/lang/Class;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lorg/apache/http/impl/client/ClientParamsStack;->log:Lorg/apache/commons/logging/Log;

    #@d
    .line 112
    iput-object p1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->applicationParams:Lorg/apache/http/params/HttpParams;

    #@f
    .line 113
    iput-object p2, p0, Lorg/apache/http/impl/client/ClientParamsStack;->clientParams:Lorg/apache/http/params/HttpParams;

    #@11
    .line 114
    iput-object p3, p0, Lorg/apache/http/impl/client/ClientParamsStack;->requestParams:Lorg/apache/http/params/HttpParams;

    #@13
    .line 115
    iput-object p4, p0, Lorg/apache/http/impl/client/ClientParamsStack;->overrideParams:Lorg/apache/http/params/HttpParams;

    #@15
    .line 111
    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/http/params/HttpParams;
    .locals 0

    #@0
    .prologue
    .line 283
    return-object p0
.end method

.method public final getApplicationParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/http/impl/client/ClientParamsStack;->applicationParams:Lorg/apache/http/params/HttpParams;

    #@2
    return-object v0
.end method

.method public final getClientParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    #@0
    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/http/impl/client/ClientParamsStack;->clientParams:Lorg/apache/http/params/HttpParams;

    #@2
    return-object v0
.end method

.method public final getOverrideParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/http/impl/client/ClientParamsStack;->overrideParams:Lorg/apache/http/params/HttpParams;

    #@2
    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 204
    if-nez p1, :cond_0

    #@2
    .line 205
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    .line 206
    const-string/jumbo v2, "Parameter name must not be null."

    #@7
    .line 205
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 209
    :cond_0
    const/4 v0, 0x0

    #@c
    .line 211
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->overrideParams:Lorg/apache/http/params/HttpParams;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 212
    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->overrideParams:Lorg/apache/http/params/HttpParams;

    #@12
    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    .line 214
    .end local v0    # "result":Ljava/lang/Object;
    :cond_1
    if-nez v0, :cond_2

    #@18
    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->requestParams:Lorg/apache/http/params/HttpParams;

    #@1a
    if-eqz v1, :cond_2

    #@1c
    .line 215
    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->requestParams:Lorg/apache/http/params/HttpParams;

    #@1e
    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v0

    #@22
    .line 217
    :cond_2
    if-nez v0, :cond_3

    #@24
    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->clientParams:Lorg/apache/http/params/HttpParams;

    #@26
    if-eqz v1, :cond_3

    #@28
    .line 218
    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->clientParams:Lorg/apache/http/params/HttpParams;

    #@2a
    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    .line 220
    :cond_3
    if-nez v0, :cond_4

    #@30
    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->applicationParams:Lorg/apache/http/params/HttpParams;

    #@32
    if-eqz v1, :cond_4

    #@34
    .line 221
    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->applicationParams:Lorg/apache/http/params/HttpParams;

    #@36
    invoke-interface {v1, p1}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    #@39
    move-result-object v0

    #@3a
    .line 223
    :cond_4
    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->log:Lorg/apache/commons/logging/Log;

    #@3c
    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    #@3f
    move-result v1

    #@40
    if-eqz v1, :cond_5

    #@42
    .line 224
    iget-object v1, p0, Lorg/apache/http/impl/client/ClientParamsStack;->log:Lorg/apache/commons/logging/Log;

    #@44
    new-instance v2, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v3, "\'"

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v2

    #@54
    const-string/jumbo v3, "\': "

    #@57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    #@66
    .line 227
    :cond_5
    return-object v0
.end method

.method public final getRequestParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    #@0
    .prologue
    .line 181
    iget-object v0, p0, Lorg/apache/http/impl/client/ClientParamsStack;->requestParams:Lorg/apache/http/params/HttpParams;

    #@2
    return-object v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 265
    const-string/jumbo v1, "Removing parameters in a stack is not supported."

    #@5
    .line 264
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    #@0
    .prologue
    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    .line 247
    const-string/jumbo v1, "Setting parameters in a stack is not supported."

    #@5
    .line 246
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method
