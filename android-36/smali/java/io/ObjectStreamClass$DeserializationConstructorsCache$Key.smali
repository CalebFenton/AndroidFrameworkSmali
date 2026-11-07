.class abstract Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;
.super Ljava/lang/Object;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass$DeserializationConstructorsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;,
        Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Lookup;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2638
    instance-of v0, p1, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    move-object v0, p1

    check-cast v0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;

    .line 2639
    .local v0, "other":Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;->length()I

    move-result v2

    .line 2640
    .local v2, "n":I
    invoke-virtual {v0}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;->length()I

    move-result v3

    if-eq v2, v3, :cond_13

    return v1

    .line 2641
    :cond_13
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_24

    invoke-virtual {p0, v3}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;->fieldType(I)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;->fieldType(I)Ljava/lang/Class;

    move-result-object v5

    if-eq v4, v5, :cond_21

    return v1

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 2642
    .end local v3    # "i":I
    :cond_24
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_25
    if-ge v3, v2, :cond_39

    invoke-virtual {p0, v3}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;->fieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;->fieldName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    return v1

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 2643
    .end local v3    # "i":I
    :cond_39
    const/4 v1, 0x1

    return v1

    .line 2638
    .end local v0    # "other":Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;
    .end local v2    # "n":I
    :cond_3b
    return v1
.end method

.method abstract blacklist fieldName(I)Ljava/lang/String;
.end method

.method abstract blacklist fieldType(I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public final whitelist test-api hashCode()I
    .registers 6

    .line 2629
    invoke-virtual {p0}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;->length()I

    move-result v0

    .line 2630
    .local v0, "n":I
    const/4 v1, 0x0

    .line 2631
    .local v1, "h":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_17

    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;->fieldType(I)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2632
    .end local v2    # "i":I
    :cond_17
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_18
    if-ge v2, v0, :cond_29

    mul-int/lit8 v3, v1, 0x1f

    invoke-virtual {p0, v2}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;->fieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v1, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 2633
    .end local v2    # "i":I
    :cond_29
    return v1
.end method

.method abstract blacklist length()I
.end method
