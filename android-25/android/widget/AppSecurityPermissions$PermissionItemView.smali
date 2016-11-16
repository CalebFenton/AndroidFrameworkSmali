.class public Landroid/widget/AppSecurityPermissions$PermissionItemView;
.super Landroid/widget/LinearLayout;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionItemView"
.end annotation


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

.field private mPackageName:Ljava/lang/String;

.field mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

.field private mShowRevokeUI:Z


# direct methods
.method static synthetic -get0(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/AppSecurityPermissions$PermissionItemView;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@3
    .line 139
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    #@6
    .line 144
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    #@a
    .line 142
    return-void
.end method

.method private addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 227
    iget-boolean v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 228
    return-void

    #@6
    .line 232
    :cond_0
    iget-object v2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    #@8
    iget v2, v2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    #@a
    and-int/lit8 v2, v2, 0x1

    #@c
    if-eqz v2, :cond_1

    #@e
    const/4 v0, 0x1

    #@f
    .line 234
    .local v0, "isRequired":Z
    :cond_1
    if-eqz v0, :cond_2

    #@11
    .line 235
    return-void

    #@12
    .line 238
    :cond_2
    new-instance v1, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;

    #@14
    invoke-direct {v1, p0}, Landroid/widget/AppSecurityPermissions$PermissionItemView$1;-><init>(Landroid/widget/AppSecurityPermissions$PermissionItemView;)V

    #@17
    .line 247
    .local v1, "ocl":Landroid/content/DialogInterface$OnClickListener;
    const v2, 0x1040539

    #@1a
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@1d
    .line 248
    const v2, 0x104000a

    #@20
    const/4 v3, 0x0

    #@21
    invoke-virtual {p1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    #@24
    .line 226
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 186
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@4
    if-eqz v6, :cond_1

    #@6
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    #@8
    if-eqz v6, :cond_1

    #@a
    .line 187
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 188
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    #@10
    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    #@13
    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1a
    move-result-object v4

    #@1b
    .line 191
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    #@1d
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@20
    move-result-object v6

    #@21
    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    #@24
    .line 192
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@26
    iget-object v6, v6, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    #@28
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@2b
    .line 193
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    #@2d
    iget v6, v6, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    #@2f
    if-eqz v6, :cond_2

    #@31
    .line 194
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    #@33
    invoke-virtual {v6, v4}, Landroid/content/pm/PermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@36
    move-result-object v6

    #@37
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@3a
    .line 210
    :goto_0
    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    #@3d
    .line 211
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@3f
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@42
    move-result-object v7

    #@43
    invoke-virtual {v6, v7, v4}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    #@4a
    .line 212
    invoke-direct {p0, v2}, Landroid/widget/AppSecurityPermissions$PermissionItemView;->addRevokeUIIfNecessary(Landroid/app/AlertDialog$Builder;)V

    #@4d
    .line 213
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    #@50
    move-result-object v6

    #@51
    iput-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    #@53
    .line 214
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    #@55
    invoke-virtual {v6, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    #@58
    .line 185
    .end local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    return-void

    #@59
    .line 198
    .restart local v2    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_0
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    #@5b
    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@5d
    const/4 v7, 0x0

    #@5e
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@61
    move-result-object v0

    #@62
    .line 199
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@65
    move-result-object v1

    #@66
    .line 203
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .local v1, "appName":Ljava/lang/CharSequence;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@68
    const/16 v6, 0x80

    #@6a
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    #@6d
    .line 204
    .local v5, "sbuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@70
    move-result-object v6

    #@71
    new-array v7, v9, [Ljava/lang/Object;

    #@73
    .line 205
    aput-object v1, v7, v8

    #@75
    const v8, 0x1040415

    #@78
    .line 204
    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@7b
    move-result-object v6

    #@7c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    .line 206
    const-string/jumbo v6, "\n\n"

    #@82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 207
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    #@87
    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    #@89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    .line 208
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    #@93
    goto :goto_0

    #@94
    .line 200
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v5    # "sbuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    #@95
    .line 201
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    #@97
    iget-object v1, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@99
    .restart local v1    # "appName":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    #@0
    .prologue
    .line 220
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    #@3
    .line 221
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 222
    iget-object v0, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mDialog:Landroid/app/AlertDialog;

    #@9
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    #@c
    .line 219
    :cond_0
    return-void
.end method

.method public setPermission(Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;Landroid/widget/AppSecurityPermissions$MyPermissionInfo;ZLjava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "grp"    # Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;
    .param p2, "perm"    # Landroid/widget/AppSecurityPermissions$MyPermissionInfo;
    .param p3, "first"    # Z
    .param p4, "newPermPrefix"    # Ljava/lang/CharSequence;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "showRevokeUI"    # Z

    #@0
    .prologue
    .line 150
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mGroup:Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;

    #@2
    .line 151
    iput-object p2, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPerm:Landroid/widget/AppSecurityPermissions$MyPermissionInfo;

    #@4
    .line 152
    iput-boolean p6, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    #@6
    .line 153
    iput-object p5, p0, Landroid/widget/AppSecurityPermissions$PermissionItemView;->mPackageName:Ljava/lang/String;

    #@8
    .line 155
    const v8, 0x1020340

    #@b
    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@e
    move-result-object v5

    #@f
    check-cast v5, Landroid/widget/ImageView;

    #@11
    .line 156
    .local v5, "permGrpIcon":Landroid/widget/ImageView;
    const v8, 0x1020341

    #@14
    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@17
    move-result-object v6

    #@18
    check-cast v6, Landroid/widget/TextView;

    #@1a
    .line 158
    .local v6, "permNameView":Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@1d
    move-result-object v8

    #@1e
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@21
    move-result-object v7

    #@22
    .line 159
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    #@23
    .line 160
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p3, :cond_0

    #@25
    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@28
    move-result-object v8

    #@29
    invoke-virtual {p1, v8, v7}, Landroid/widget/AppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/Context;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@2c
    move-result-object v1

    #@2d
    .line 163
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v2, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mLabel:Ljava/lang/CharSequence;

    #@2f
    .line 164
    .local v2, "label":Ljava/lang/CharSequence;
    iget-boolean v8, p2, Landroid/widget/AppSecurityPermissions$MyPermissionInfo;->mNew:Z

    #@31
    if-eqz v8, :cond_1

    #@33
    if-eqz p4, :cond_1

    #@35
    .line 166
    new-instance v0, Landroid/text/SpannableStringBuilder;

    #@37
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@3a
    .line 167
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3d
    move-result-object v4

    #@3e
    .line 168
    .local v4, "parcel":Landroid/os/Parcel;
    const/4 v8, 0x0

    #@3f
    invoke-static {p4, v4, v8}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@42
    .line 169
    const/4 v8, 0x0

    #@43
    invoke-virtual {v4, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    #@46
    .line 170
    sget-object v8, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@48
    invoke-interface {v8, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@4b
    move-result-object v3

    #@4c
    check-cast v3, Ljava/lang/CharSequence;

    #@4e
    .line 171
    .local v3, "newStr":Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    #@51
    .line 172
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@54
    .line 173
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@57
    .line 174
    move-object v2, v0

    #@58
    .line 177
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v3    # "newStr":Ljava/lang/CharSequence;
    .end local v4    # "parcel":Landroid/os/Parcel;
    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    #@5b
    .line 178
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    #@5e
    .line 179
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    #@61
    .line 149
    return-void
.end method
