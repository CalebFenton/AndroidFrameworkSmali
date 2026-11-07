.class Landroid/app/AppOpInfo$Builder;
.super Ljava/lang/Object;
.source "AppOpInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAllowSystemRestrictionBypass:Landroid/app/AppOpsManager$RestrictionBypass;

.field private blacklist mCode:I

.field private blacklist mDefaultMode:I

.field private blacklist mDisableReset:Z

.field private blacklist mForceCollectNotes:Z

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mPermission:Ljava/lang/String;

.field private blacklist mRestrictRead:Z

.field private blacklist mRestriction:Ljava/lang/String;

.field private blacklist mSimpleName:Ljava/lang/String;

.field private blacklist mSwitchCode:I


# direct methods
.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "simpleName"    # Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/AppOpInfo$Builder;->mPermission:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Landroid/app/AppOpInfo$Builder;->mRestriction:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Landroid/app/AppOpInfo$Builder;->mAllowSystemRestrictionBypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 136
    const/4 v0, 0x3

    iput v0, p0, Landroid/app/AppOpInfo$Builder;->mDefaultMode:I

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/AppOpInfo$Builder;->mDisableReset:Z

    .line 138
    iput-boolean v0, p0, Landroid/app/AppOpInfo$Builder;->mRestrictRead:Z

    .line 139
    iput-boolean v0, p0, Landroid/app/AppOpInfo$Builder;->mForceCollectNotes:Z

    .line 142
    const/4 v0, -0x1

    if-lt p1, v0, :cond_26

    .line 143
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iput p1, p0, Landroid/app/AppOpInfo$Builder;->mCode:I

    .line 146
    iput p1, p0, Landroid/app/AppOpInfo$Builder;->mSwitchCode:I

    .line 147
    iput-object p2, p0, Landroid/app/AppOpInfo$Builder;->mName:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Landroid/app/AppOpInfo$Builder;->mSimpleName:Ljava/lang/String;

    .line 149
    return-void

    .line 142
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method


# virtual methods
.method public blacklist build()Landroid/app/AppOpInfo;
    .registers 13

    .line 208
    new-instance v0, Landroid/app/AppOpInfo;

    iget v1, p0, Landroid/app/AppOpInfo$Builder;->mCode:I

    iget v2, p0, Landroid/app/AppOpInfo$Builder;->mSwitchCode:I

    iget-object v3, p0, Landroid/app/AppOpInfo$Builder;->mName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AppOpInfo$Builder;->mSimpleName:Ljava/lang/String;

    iget-object v5, p0, Landroid/app/AppOpInfo$Builder;->mPermission:Ljava/lang/String;

    iget-object v6, p0, Landroid/app/AppOpInfo$Builder;->mRestriction:Ljava/lang/String;

    iget-object v7, p0, Landroid/app/AppOpInfo$Builder;->mAllowSystemRestrictionBypass:Landroid/app/AppOpsManager$RestrictionBypass;

    iget v8, p0, Landroid/app/AppOpInfo$Builder;->mDefaultMode:I

    iget-boolean v9, p0, Landroid/app/AppOpInfo$Builder;->mDisableReset:Z

    iget-boolean v10, p0, Landroid/app/AppOpInfo$Builder;->mRestrictRead:Z

    iget-boolean v11, p0, Landroid/app/AppOpInfo$Builder;->mForceCollectNotes:Z

    invoke-direct/range {v0 .. v11}, Landroid/app/AppOpInfo;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;IZZZ)V

    return-object v0
.end method

.method public blacklist setAllowSystemRestrictionBypass(Landroid/app/AppOpsManager$RestrictionBypass;)Landroid/app/AppOpInfo$Builder;
    .registers 2
    .param p1, "value"    # Landroid/app/AppOpsManager$RestrictionBypass;

    .line 183
    iput-object p1, p0, Landroid/app/AppOpInfo$Builder;->mAllowSystemRestrictionBypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 184
    return-object p0
.end method

.method public blacklist setCode(I)Landroid/app/AppOpInfo$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 152
    iput p1, p0, Landroid/app/AppOpInfo$Builder;->mCode:I

    .line 153
    return-object p0
.end method

.method public blacklist setDefaultMode(I)Landroid/app/AppOpInfo$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 188
    iput p1, p0, Landroid/app/AppOpInfo$Builder;->mDefaultMode:I

    .line 189
    return-object p0
.end method

.method public blacklist setDisableReset(Z)Landroid/app/AppOpInfo$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 193
    iput-boolean p1, p0, Landroid/app/AppOpInfo$Builder;->mDisableReset:Z

    .line 194
    return-object p0
.end method

.method public blacklist setForceCollectNotes(Z)Landroid/app/AppOpInfo$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 203
    iput-boolean p1, p0, Landroid/app/AppOpInfo$Builder;->mForceCollectNotes:Z

    .line 204
    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 162
    iput-object p1, p0, Landroid/app/AppOpInfo$Builder;->mName:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public blacklist setPermission(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 172
    iput-object p1, p0, Landroid/app/AppOpInfo$Builder;->mPermission:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public blacklist setRestrictRead(Z)Landroid/app/AppOpInfo$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 198
    iput-boolean p1, p0, Landroid/app/AppOpInfo$Builder;->mRestrictRead:Z

    .line 199
    return-object p0
.end method

.method public blacklist setRestriction(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 177
    iput-object p1, p0, Landroid/app/AppOpInfo$Builder;->mRestriction:Ljava/lang/String;

    .line 178
    return-object p0
.end method

.method public blacklist setSimpleName(Ljava/lang/String;)Landroid/app/AppOpInfo$Builder;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 167
    iput-object p1, p0, Landroid/app/AppOpInfo$Builder;->mSimpleName:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public blacklist setSwitchCode(I)Landroid/app/AppOpInfo$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 157
    iput p1, p0, Landroid/app/AppOpInfo$Builder;->mSwitchCode:I

    .line 158
    return-object p0
.end method
