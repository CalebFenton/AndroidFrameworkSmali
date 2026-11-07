.class public final Landroid/service/autofill/SavedDatasetsInfo;
.super Ljava/lang/Object;
.source "SavedDatasetsInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/SavedDatasetsInfo$Type;
    }
.end annotation


# static fields
.field public static final whitelist TYPE_OTHER:Ljava/lang/String; = "other"

.field public static final whitelist TYPE_PASSWORDS:Ljava/lang/String; = "passwords"


# instance fields
.field private final blacklist mCount:I

.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 12
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "count"    # I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    const-string/jumbo v1, "other"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    .line 100
    const-string/jumbo v2, "passwords"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_52

    .line 101
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "type was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but must be one of: TYPE_OTHER("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "), TYPE_PASSWORDS("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_52
    :goto_52
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 109
    iput p2, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    .line 110
    const-class v3, Landroid/annotation/IntRange;

    iget v5, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    const-string v6, "from"

    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;J)V

    .line 115
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 152
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 153
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_28

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_28

    .line 155
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/autofill/SavedDatasetsInfo;

    .line 157
    .local v2, "that":Landroid/service/autofill/SavedDatasetsInfo;
    iget-object v3, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    iget-object v4, v2, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    .line 158
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget v3, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    iget v4, v2, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    if-ne v3, v4, :cond_26

    goto :goto_27

    :cond_26
    move v0, v1

    .line 157
    :goto_27
    return v0

    .line 153
    .end local v2    # "that":Landroid/service/autofill/SavedDatasetsInfo;
    :cond_28
    :goto_28
    return v1
.end method

.method public whitelist getCount()I
    .registers 2

    .line 130
    iget v0, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    return v0
.end method

.method public whitelist getType()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 168
    const/4 v0, 0x1

    .line 169
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 170
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    add-int/2addr v0, v2

    .line 171
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SavedDatasetsInfo { type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/SavedDatasetsInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/autofill/SavedDatasetsInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
