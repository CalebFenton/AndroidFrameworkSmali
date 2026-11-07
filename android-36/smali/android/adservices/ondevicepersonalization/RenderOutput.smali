.class public final Landroid/adservices/ondevicepersonalization/RenderOutput;
.super Ljava/lang/Object;
.source "RenderOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/ondevicepersonalization/RenderOutput$Builder;
    }
.end annotation


# instance fields
.field private blacklist mContent:Ljava/lang/String;

.field private blacklist mTemplateId:Ljava/lang/String;

.field private blacklist mTemplateParams:Landroid/os/PersistableBundle;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "templateId"    # Ljava/lang/String;
    .param p3, "templateParams"    # Landroid/os/PersistableBundle;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mContent:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mTemplateId:Ljava/lang/String;

    .line 53
    sget-object v1, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v1, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mTemplateParams:Landroid/os/PersistableBundle;

    .line 77
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mContent:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mTemplateId:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mTemplateParams:Landroid/os/PersistableBundle;

    .line 80
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mTemplateParams:Landroid/os/PersistableBundle;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 122
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 123
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 125
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/adservices/ondevicepersonalization/RenderOutput;

    .line 127
    .local v2, "that":Landroid/adservices/ondevicepersonalization/RenderOutput;
    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mContent:Ljava/lang/String;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/RenderOutput;->mContent:Ljava/lang/String;

    .line 128
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mTemplateId:Ljava/lang/String;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/RenderOutput;->mTemplateId:Ljava/lang/String;

    .line 129
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mTemplateParams:Landroid/os/PersistableBundle;

    iget-object v4, v2, Landroid/adservices/ondevicepersonalization/RenderOutput;->mTemplateParams:Landroid/os/PersistableBundle;

    .line 130
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 127
    :goto_35
    return v0

    .line 123
    .end local v2    # "that":Landroid/adservices/ondevicepersonalization/RenderOutput;
    :cond_36
    :goto_36
    return v1
.end method

.method public whitelist getContent()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTemplateId()Ljava/lang/String;
    .registers 2

    .line 103
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mTemplateId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getTemplateParams()Landroid/os/PersistableBundle;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mTemplateParams:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 139
    const/4 v0, 0x1

    .line 140
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mContent:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 141
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mTemplateId:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 142
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/RenderOutput;->mTemplateParams:Landroid/os/PersistableBundle;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 143
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    return v1
.end method
