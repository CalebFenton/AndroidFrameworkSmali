.class abstract Ljava/lang/ProcessEnvironment$ExternalData;
.super Ljava/lang/Object;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ExternalData"
.end annotation


# instance fields
.field protected final bytes:[B

.field protected final str:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    #@0
    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 131
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$ExternalData;->str:Ljava/lang/String;

    #@5
    .line 132
    iput-object p2, p0, Ljava/lang/ProcessEnvironment$ExternalData;->bytes:[B

    #@7
    .line 130
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 144
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$ExternalData;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 145
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$ExternalData;->getBytes()[B

    #@7
    move-result-object v0

    #@8
    check-cast p1, Ljava/lang/ProcessEnvironment$ExternalData;

    #@a
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/ProcessEnvironment$ExternalData;->getBytes()[B

    #@d
    move-result-object v1

    #@e
    invoke-static {v0, v1}, Ljava/lang/ProcessEnvironment;->-wrap0([B[B)Z

    #@11
    move-result v0

    #@12
    .line 144
    :goto_0
    return v0

    #@13
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method

.method public getBytes()[B
    .locals 1

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$ExternalData;->bytes:[B

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$ExternalData;->getBytes()[B

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/lang/ProcessEnvironment;->-wrap2([B)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$ExternalData;->str:Ljava/lang/String;

    #@2
    return-object v0
.end method
