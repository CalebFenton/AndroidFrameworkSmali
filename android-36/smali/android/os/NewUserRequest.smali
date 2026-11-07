.class public final Landroid/os/NewUserRequest;
.super Ljava/lang/Object;
.source "NewUserRequest.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/NewUserRequest$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mAccountName:Ljava/lang/String;

.field private final blacklist mAccountOptions:Landroid/os/PersistableBundle;

.field private final blacklist mAccountType:Ljava/lang/String;

.field private final blacklist mAdmin:Z

.field private final blacklist mEphemeral:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mUserIcon:Landroid/graphics/Bitmap;

.field private final blacklist mUserType:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Landroid/os/NewUserRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/os/NewUserRequest$Builder;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmName(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/NewUserRequest;->mName:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmAdmin(Landroid/os/NewUserRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/NewUserRequest;->mAdmin:Z

    .line 49
    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmEphemeral(Landroid/os/NewUserRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/NewUserRequest;->mEphemeral:Z

    .line 50
    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmUserType(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/NewUserRequest;->mUserType:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmUserIcon(Landroid/os/NewUserRequest$Builder;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/os/NewUserRequest;->mUserIcon:Landroid/graphics/Bitmap;

    .line 52
    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmAccountName(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/NewUserRequest;->mAccountName:Ljava/lang/String;

    .line 53
    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmAccountType(Landroid/os/NewUserRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/NewUserRequest;->mAccountType:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Landroid/os/NewUserRequest$Builder;->-$$Nest$fgetmAccountOptions(Landroid/os/NewUserRequest$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/os/NewUserRequest;->mAccountOptions:Landroid/os/PersistableBundle;

    .line 55
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/NewUserRequest$Builder;Landroid/os/NewUserRequest-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/os/NewUserRequest;-><init>(Landroid/os/NewUserRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist getAccountName()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/os/NewUserRequest;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getAccountOptions()Landroid/os/PersistableBundle;
    .registers 2

    .line 134
    iget-object v0, p0, Landroid/os/NewUserRequest;->mAccountOptions:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getAccountType()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/os/NewUserRequest;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getFlags()I
    .registers 3

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "flags":I
    invoke-virtual {p0}, Landroid/os/NewUserRequest;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit8 v0, v0, 0x2

    .line 90
    :cond_9
    invoke-virtual {p0}, Landroid/os/NewUserRequest;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_11

    or-int/lit16 v0, v0, 0x100

    .line 91
    :cond_11
    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/os/NewUserRequest;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getUserIcon()Landroid/graphics/Bitmap;
    .registers 2

    .line 109
    iget-object v0, p0, Landroid/os/NewUserRequest;->mUserIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getUserType()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Landroid/os/NewUserRequest;->mUserType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isAdmin()Z
    .registers 2

    .line 81
    iget-boolean v0, p0, Landroid/os/NewUserRequest;->mAdmin:Z

    return v0
.end method

.method public whitelist isEphemeral()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Landroid/os/NewUserRequest;->mEphemeral:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewUserRequest{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/NewUserRequest;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAdmin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/os/NewUserRequest;->mAdmin:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mEphemeral="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/os/NewUserRequest;->mEphemeral:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mUserType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/os/NewUserRequest;->mUserType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAccountName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/os/NewUserRequest;->mAccountName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAccountType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/os/NewUserRequest;->mAccountType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccountOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/NewUserRequest;->mAccountOptions:Landroid/os/PersistableBundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
