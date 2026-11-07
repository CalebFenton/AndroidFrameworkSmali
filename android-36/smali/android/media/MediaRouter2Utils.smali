.class public Landroid/media/MediaRouter2Utils;
.super Ljava/lang/Object;
.source "MediaRouter2Utils.java"


# static fields
.field static final blacklist SEPARATOR:Ljava/lang/String; = ":"

.field static final blacklist TAG:Ljava/lang/String; = "MR2Utils"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getOriginalId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "uniqueId"    # Ljava/lang/String;

    .line 72
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 73
    const-string v0, "MR2Utils"

    const-string v2, "getOriginalId: uniqueId shouldn\'t be empty"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-object v1

    .line 77
    :cond_f
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "firstIndexOfSeparator":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2f

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v2, v3, :cond_21

    goto :goto_2f

    .line 82
    :cond_21
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "providerId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 84
    return-object v1

    .line 87
    :cond_2e
    return-object v2

    .line 79
    .end local v2    # "providerId":Ljava/lang/String;
    :cond_2f
    :goto_2f
    return-object v1
.end method

.method public static blacklist getProviderId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "uniqueId"    # Ljava/lang/String;

    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 49
    const-string v0, "MR2Utils"

    const-string v2, "getProviderId: uniqueId shouldn\'t be empty"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-object v1

    .line 53
    :cond_f
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 54
    .local v0, "firstIndexOfSeparator":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_19

    .line 55
    return-object v1

    .line 58
    :cond_19
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "providerId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 60
    return-object v1

    .line 63
    :cond_25
    return-object v2
.end method

.method public static blacklist toUniqueId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "providerId"    # Ljava/lang/String;
    .param p1, "id"    # Ljava/lang/String;

    .line 36
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 36
    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
