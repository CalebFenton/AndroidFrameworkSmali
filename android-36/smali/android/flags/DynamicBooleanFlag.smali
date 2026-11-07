.class public Landroid/flags/DynamicBooleanFlag;
.super Landroid/flags/BooleanFlagBase;
.source "DynamicBooleanFlag.java"

# interfaces
.implements Landroid/flags/DynamicFlag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/flags/BooleanFlagBase;",
        "Landroid/flags/DynamicFlag<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mDefault:Z


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/flags/BooleanFlagBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-boolean p3, p0, Landroid/flags/DynamicBooleanFlag;->mDefault:Z

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlagBase;
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

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Landroid/flags/DynamicBooleanFlag;->defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/DynamicBooleanFlag;

    move-result-object p1

    return-object p1
.end method

.method public blacklist defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/DynamicBooleanFlag;
    .registers 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "categoryName"    # Ljava/lang/String;

    .line 47
    invoke-super {p0, p1, p2, p3}, Landroid/flags/BooleanFlagBase;->defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlagBase;

    .line 48
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

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Landroid/flags/DynamicBooleanFlag;->defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/DynamicBooleanFlag;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getCategoryName()Ljava/lang/String;
    .registers 2

    .line 26
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefault()Ljava/lang/Boolean;
    .registers 2

    .line 42
    iget-boolean v0, p0, Landroid/flags/DynamicBooleanFlag;->mDefault:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getDefault()Ljava/lang/Object;
    .registers 2

    .line 26
    invoke-virtual {p0}, Landroid/flags/DynamicBooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getDescription()Ljava/lang/String;
    .registers 2

    .line 26
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getLabel()Ljava/lang/String;
    .registers 2

    .line 26
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getName()Ljava/lang/String;
    .registers 2

    .line 26
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getNamespace()Ljava/lang/String;
    .registers 2

    .line 26
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 26
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
