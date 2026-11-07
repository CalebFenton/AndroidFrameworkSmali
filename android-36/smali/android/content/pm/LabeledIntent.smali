.class public Landroid/content/pm/LabeledIntent;
.super Landroid/content/Intent;
.source "LabeledIntent.java"


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/LabeledIntent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mIcon:I

.field private greylist-max-o mLabelRes:I

.field private greylist-max-o mNonLocalizedLabel:Ljava/lang/CharSequence;

.field private greylist-max-o mSourcePackage:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 183
    new-instance v0, Landroid/content/pm/LabeledIntent$1;

    invoke-direct {v0}, Landroid/content/pm/LabeledIntent$1;-><init>()V

    sput-object v0, Landroid/content/pm/LabeledIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;Ljava/lang/String;II)V
    .registers 6
    .param p1, "origIntent"    # Landroid/content/Intent;
    .param p2, "sourcePackage"    # Ljava/lang/String;
    .param p3, "labelRes"    # I
    .param p4, "icon"    # I

    .line 45
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 46
    iput-object p2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 47
    iput p3, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 49
    iput p4, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 50
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 6
    .param p1, "origIntent"    # Landroid/content/Intent;
    .param p2, "sourcePackage"    # Ljava/lang/String;
    .param p3, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # I

    .line 63
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 64
    iput-object p2, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 66
    iput-object p3, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 67
    iput p4, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 68
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 171
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 172
    invoke-virtual {p0, p1}, Landroid/content/pm/LabeledIntent;->readFromParcel(Landroid/os/Parcel;)V

    .line 173
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "sourcePackage"    # Ljava/lang/String;
    .param p2, "labelRes"    # I
    .param p3, "icon"    # I

    .line 78
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 79
    iput-object p1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 80
    iput p2, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 82
    iput p3, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 83
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    .registers 5
    .param p1, "sourcePackage"    # Ljava/lang/String;
    .param p2, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p3, "icon"    # I

    .line 94
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 95
    iput-object p1, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 97
    iput-object p2, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 98
    iput p3, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 99
    return-void
.end method


# virtual methods
.method public whitelist getIconResource()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    return v0
.end method

.method public whitelist getLabelResource()I
    .registers 2

    .line 112
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    return v0
.end method

.method public whitelist getNonLocalizedLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getSourcePackage()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 153
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 154
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 155
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    .line 156
    return-object v0

    .line 159
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_14
    return-object v1
.end method

.method public whitelist loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 135
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    .line 136
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    return-object v0

    .line 138
    :cond_7
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 139
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 140
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1b

    .line 141
    return-object v0

    .line 144
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_1b
    return-object v1
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 176
    invoke-super {p0, p1}, Landroid/content/Intent;->readFromParcel(Landroid/os/Parcel;)V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    .line 179
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    .line 181
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 163
    invoke-super {p0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mSourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mLabelRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Landroid/content/pm/LabeledIntent;->mNonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 167
    iget v0, p0, Landroid/content/pm/LabeledIntent;->mIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
