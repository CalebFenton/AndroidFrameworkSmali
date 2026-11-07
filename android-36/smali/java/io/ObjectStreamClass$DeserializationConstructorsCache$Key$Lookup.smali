.class final Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Lookup;
.super Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;
.source "ObjectStreamClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Lookup"
.end annotation


# instance fields
.field final blacklist fields:[Ljava/io/ObjectStreamField;


# direct methods
.method constructor blacklist <init>([Ljava/io/ObjectStreamField;)V
    .registers 2
    .param p1, "fields"    # [Ljava/io/ObjectStreamField;

    .line 2650
    invoke-direct {p0}, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key;-><init>()V

    iput-object p1, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Lookup;->fields:[Ljava/io/ObjectStreamField;

    return-void
.end method


# virtual methods
.method blacklist fieldName(I)Ljava/lang/String;
    .registers 3
    .param p1, "i"    # I

    .line 2656
    iget-object v0, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Lookup;->fields:[Ljava/io/ObjectStreamField;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getName()Ljava/lang/String;

    move-result-object v0

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

    .line 2659
    iget-object v0, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Lookup;->fields:[Ljava/io/ObjectStreamField;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/io/ObjectStreamField;->getType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method blacklist length()I
    .registers 2

    .line 2653
    iget-object v0, p0, Ljava/io/ObjectStreamClass$DeserializationConstructorsCache$Key$Lookup;->fields:[Ljava/io/ObjectStreamField;

    array-length v0, v0

    return v0
.end method
