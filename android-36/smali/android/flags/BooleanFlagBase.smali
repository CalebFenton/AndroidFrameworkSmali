.class abstract Landroid/flags/BooleanFlagBase;
.super Ljava/lang/Object;
.source "BooleanFlagBase.java"

# interfaces
.implements Landroid/flags/Flag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/flags/Flag<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mCategoryName:Ljava/lang/String;

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mLabel:Ljava/lang/String;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mNamespace:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/flags/BooleanFlagBase;->mNamespace:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Landroid/flags/BooleanFlagBase;->mName:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Landroid/flags/BooleanFlagBase;->mLabel:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public blacklist defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlagBase;
    .registers 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "categoryName"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Landroid/flags/BooleanFlagBase;->mLabel:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Landroid/flags/BooleanFlagBase;->mDescription:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Landroid/flags/BooleanFlagBase;->mCategoryName:Ljava/lang/String;

    .line 58
    return-object p0
.end method

.method public bridge synthetic blacklist defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/Flag;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Landroid/flags/BooleanFlagBase;->defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlagBase;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getCategoryName()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/flags/BooleanFlagBase;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract blacklist getDefault()Ljava/lang/Boolean;
.end method

.method public bridge synthetic blacklist getDefault()Ljava/lang/Object;
    .registers 2

    .line 21
    invoke-virtual {p0}, Landroid/flags/BooleanFlagBase;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDescription()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/flags/BooleanFlagBase;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLabel()Ljava/lang/String;
    .registers 2

    .line 64
    iget-object v0, p0, Landroid/flags/BooleanFlagBase;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 50
    iget-object v0, p0, Landroid/flags/BooleanFlagBase;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNamespace()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/flags/BooleanFlagBase;->mNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/flags/BooleanFlagBase;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/flags/BooleanFlagBase;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/flags/BooleanFlagBase;->getDefault()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
