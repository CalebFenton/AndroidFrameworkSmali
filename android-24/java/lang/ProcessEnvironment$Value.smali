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
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/ProcessEnvironment$Value;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "bytes"    # [B

    #@0
    .prologue
    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/ProcessEnvironment$ExternalData;-><init>(Ljava/lang/String;[B)V

    #@3
    .line 189
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 202
    invoke-static {p0}, Ljava/lang/ProcessEnvironment;->-wrap3(Ljava/lang/String;)V

    #@3
    .line 203
    invoke-static {p0}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public static valueOf([B)Ljava/lang/ProcessEnvironment$Value;
    .locals 2
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 207
    new-instance v0, Ljava/lang/ProcessEnvironment$Value;

    #@2
    new-instance v1, Ljava/lang/String;

    #@4
    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    #@7
    invoke-direct {v0, v1, p0}, Ljava/lang/ProcessEnvironment$Value;-><init>(Ljava/lang/String;[B)V

    #@a
    return-object v0
.end method

.method public static valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Value;
    .locals 1
    .param p0, "str"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 194
    check-cast p0, Ljava/lang/String;

    #@2
    .end local p0    # "str":Ljava/lang/Object;
    invoke-static {p0}, Ljava/lang/ProcessEnvironment$Value;->valueOfQueryOnly(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static valueOfQueryOnly(Ljava/lang/String;)Ljava/lang/ProcessEnvironment$Value;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 198
    new-instance v0, Ljava/lang/ProcessEnvironment$Value;

    #@2
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, p0, v1}, Ljava/lang/ProcessEnvironment$Value;-><init>(Ljava/lang/String;[B)V

    #@9
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 210
    check-cast p1, Ljava/lang/ProcessEnvironment$Value;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/ProcessEnvironment$Value;->compareTo(Ljava/lang/ProcessEnvironment$Value;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/lang/ProcessEnvironment$Value;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/ProcessEnvironment$Value;

    #@0
    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/lang/ProcessEnvironment$Value;->getBytes()[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Ljava/lang/ProcessEnvironment$Value;->getBytes()[B

    #@7
    move-result-object v1

    #@8
    invoke-static {v0, v1}, Ljava/lang/ProcessEnvironment;->-wrap1([B[B)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 215
    instance-of v0, p1, Ljava/lang/ProcessEnvironment$Value;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-super {p0, p1}, Ljava/lang/ProcessEnvironment$ExternalData;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method
