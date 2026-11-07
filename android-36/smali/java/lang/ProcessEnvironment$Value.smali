.class Ljava/lang/ProcessEnvironment$Value;
.super Ljava/lang/ProcessEnvironment$ExternalData;
.source "ProcessEnvironment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ProcessEnvironment$ExternalData;",
        "Ljava/lang/Comparable<",
        "Ljava/lang/ProcessEnvironment$Value;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    .line 216
    invoke-direct {p0, p1, p2}, Ljava/lang/ProcessEnvironment$ExternalData;-><init>(Ljava/lang/String;[B)V

    .line 217
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 228
    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->-$$Nest$smvalidateValue(Ljava/lang/String;)V

    .line 229
    invoke-static {p0}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist valueOf([B)Ljava/lang/ProcessEnvironment$Value;
    .registers 3
    .param p0, "bytes"    # [B

    .line 233
    new-instance v0, Ljava/lang/ProcessEnvironment$Value;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1, p0}, Ljava/lang/ProcessEnvironment$Value;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method

.method public static blacklist valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;
    .registers 2
    .param p0, "str"    # Ljava/lang/Object;

    .line 220
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist valueOfQueryOnly(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 224
    new-instance v0, Ljava/lang/ProcessEnvironment$Value;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/ProcessEnvironment$Value;-><init>(Ljava/lang/String;[B)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 212
    check-cast p1, Ljava/lang/ProcessEnvironment$Value;

    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$Value;->compareTo(Ljava/lang/ProcessEnvironment$Value;)I

    move-result p1

    return p1
.end method

.method public blacklist compareTo(Ljava/lang/ProcessEnvironment$Value;)I
    .registers 4
    .param p1, "value"    # Ljava/lang/ProcessEnvironment$Value;

    .line 237
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$Value;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ProcessEnvironment$Value;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/ProcessEnvironment;->-$$Nest$smarrayCompare([B[B)I

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 241
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$Value;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Ljava/lang/ProcessEnvironment$ExternalData;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
