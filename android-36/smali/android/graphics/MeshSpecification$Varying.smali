.class public Landroid/graphics/MeshSpecification$Varying;
.super Ljava/lang/Object;
.source "MeshSpecification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/MeshSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Varying"
.end annotation


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput p1, p0, Landroid/graphics/MeshSpecification$Varying;->mType:I

    .line 233
    iput-object p2, p0, Landroid/graphics/MeshSpecification$Varying;->mName:Ljava/lang/String;

    .line 234
    return-void
.end method


# virtual methods
.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 249
    iget-object v0, p0, Landroid/graphics/MeshSpecification$Varying;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 241
    iget v0, p0, Landroid/graphics/MeshSpecification$Varying;->mType:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Varying{mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/MeshSpecification$Varying;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/MeshSpecification$Varying;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
