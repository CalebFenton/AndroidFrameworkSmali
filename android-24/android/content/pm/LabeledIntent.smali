.class public Landroid/content/pm/LabeledIntent;
.super Landroid/content/Intent;
.source "LabeledIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/LabeledIntent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/LabeledIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIcon:I

.field private mLabelRes:I

.field private mNonLocalizedLabel:Ljava/lang/CharSequence;

.field private mSourcePackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 184
    new-instance v0, Landroid/content/pm/LabeledIntent$1;

    #@2
    invoke-direct {v0}, Landroid/content/pm/LabeledIntent$1;-><init>()V

    #@5
    .line 183
    sput-object v0, Landroid/content/pm/LabeledIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 1
    .param p1, "origIntent"    # Landroid/content/Intent;
    .param p2, "sourcePackage"    # Ljava/lang/String;
    .param p3, "labelRes"    # I
    .param p4, "icon"    # I

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@3
    .line 46
    iput-object p2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    #@5
    .line 47
    iput p3, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    #@7
    .line 48
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    #@a
    .line 49
    iput p4, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    #@c
    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "origIntent"    # Landroid/content/Intent;
    .param p2, "sourcePackage"    # Ljava/lang/String;
    .param p3, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # I

    #@0
    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@3
    .line 64
    iput-object p2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    #@5
    .line 65
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    #@8
    .line 66
    iput-object p3, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    #@a
    .line 67
    iput p4, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    #@c
    .line 62
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 171
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    #@3
    .line 172
    invoke-virtual {p0, p1}, Landroid/content/pm/LabeledIntent;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 171
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "sourcePackage"    # Ljava/lang/String;
    .param p2, "labelRes"    # I
    .param p3, "icon"    # I

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    #@3
    .line 79
    iput-object p1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    #@5
    .line 80
    iput p2, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    #@7
    .line 81
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    #@a
    .line 82
    iput p3, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    #@c
    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "sourcePackage"    # Ljava/lang/String;
    .param p2, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I

    #@0
    .prologue
    .line 93
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    #@3
    .line 95
    iput-object p1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    #@5
    .line 96
    const/4 v0, 0x0

    #@6
    iput v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    #@8
    .line 97
    iput-object p2, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    #@a
    .line 98
    iput p3, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    #@c
    .line 94
    return-void
.end method


# virtual methods
.method public getIconResource()I
    .locals 1

    #@0
    .prologue
    .line 126
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    #@2
    return v0
.end method

.method public getLabelResource()I
    .locals 1

    #@0
    .prologue
    .line 112
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    #@2
    return v0
.end method

.method public getNonLocalizedLabel()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getSourcePackage()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 105
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 153
    iget v1, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 154
    iget-object v1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    #@b
    iget v2, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    #@d
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@10
    move-result-object v0

    #@11
    .line 155
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@13
    .line 156
    return-object v0

    #@14
    .line 159
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-object v3
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 135
    iget-object v1, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 136
    iget-object v1, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    #@7
    return-object v1

    #@8
    .line 138
    :cond_0
    iget v1, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    #@a
    if-eqz v1, :cond_1

    #@c
    iget-object v1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 139
    iget-object v1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    #@12
    iget v2, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    #@14
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    #@17
    move-result-object v0

    #@18
    .line 140
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    #@1a
    .line 141
    return-object v0

    #@1b
    .line 144
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1
    return-object v3
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    #@3
    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    #@9
    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v0

    #@d
    iput v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    #@f
    .line 179
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@11
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/lang/CharSequence;

    #@17
    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    #@19
    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v0

    #@1d
    iput v0, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    #@1f
    .line 175
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    #@3
    .line 164
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    #@5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@8
    .line 165
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 166
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    #@f
    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@12
    .line 167
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 162
    return-void
.end method
