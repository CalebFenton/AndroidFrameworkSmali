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
.field protected final blacklist bytes:[B

.field protected final blacklist str:Ljava/lang/String;


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-object p1, p0, Ljava/lang/ProcessEnvironment$ExternalData;->str:Ljava/lang/String;

    .line 158
    iput-object p2, p0, Ljava/lang/ProcessEnvironment$ExternalData;->bytes:[B

    .line 159
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 170
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$ExternalData;

    if-eqz v0, :cond_17

    .line 171
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$ExternalData;->getBytes()[B

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/ProcessEnvironment$ExternalData;

    invoke-virtual {v1}, Ljava/lang/ProcessEnvironment$ExternalData;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/ProcessEnvironment;->-$$Nest$smarrayEquals([B[B)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 170
    :goto_18
    return v0
.end method

.method public blacklist getBytes()[B
    .registers 2

    .line 162
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$ExternalData;->bytes:[B

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 175
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$ExternalData;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/lang/ProcessEnvironment;->-$$Nest$smarrayHash([B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$ExternalData;->str:Ljava/lang/String;

    return-object v0
.end method
