.class final Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;
.super Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Impl"
.end annotation


# instance fields
.field final blacklist fieldNames:[Ljava/lang/String;

.field final blacklist fieldTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field blacklist next:Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;


# direct methods
.method constructor blacklist <init>([Ljava/io/ObjectStreamField;)V
    .registers 5
    .param p1, "fields"    # [Ljava/io/ObjectStreamField;

    .line 2668
    invoke-direct {p0}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;-><init>()V

    .line 2669
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;->fieldNames:[Ljava/lang/String;

    .line 2670
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Class;

    iput-object v0, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;->fieldTypes:[Ljava/lang/Class;

    .line 2671
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_28

    .line 2672
    iget-object v1, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;->fieldNames:[Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2673
    iget-object v1, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;->fieldTypes:[Ljava/lang/Class;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2671
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2675
    .end local v0    # "i":I
    :cond_28
    return-void
.end method


# virtual methods
.method blacklist fieldName(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 2681
    iget-object v0, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;->fieldNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method blacklist fieldType(I)Ljava/lang/Class;
    .registers 3
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 2684
    iget-object v0, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;->fieldTypes:[Ljava/lang/Class;

    aget-object v0, v0, p1

    return-object v0
.end method

.method blacklist length()I
    .registers 2

    .line 2678
    iget-object v0, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Impl;->fieldNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method
