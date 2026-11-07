.class public final Landroid/flags/FusedOnFlag;
.super Landroid/flags/BooleanFlagBase;
.source "FusedOnFlag.java"


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/flags/BooleanFlagBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
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

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Landroid/flags/FusedOnFlag;->defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOnFlag;

    move-result-object p1

    return-object p1
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

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Landroid/flags/FusedOnFlag;->defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOnFlag;

    move-result-object p1

    return-object p1
.end method

.method public blacklist defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOnFlag;
    .registers 4
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "categoryName"    # Ljava/lang/String;

    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/flags/BooleanFlagBase;->defineMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/flags/BooleanFlagBase;

    .line 47
    return-object p0
.end method

.method public bridge synthetic blacklist getCategoryName()Ljava/lang/String;
    .registers 2

    .line 29
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getCategoryName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDefault()Ljava/lang/Boolean;
    .registers 2

    .line 41
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getDefault()Ljava/lang/Object;
    .registers 2

    .line 29
    invoke-virtual {p0}, Landroid/flags/FusedOnFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getDescription()Ljava/lang/String;
    .registers 2

    .line 29
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getLabel()Ljava/lang/String;
    .registers 2

    .line 29
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getName()Ljava/lang/String;
    .registers 2

    .line 29
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getNamespace()Ljava/lang/String;
    .registers 2

    .line 29
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 29
    invoke-super {p0}, Landroid/flags/BooleanFlagBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
