.class public final Landroid/service/chooser/ChooserResult;
.super Ljava/lang/Object;
.source "ChooserResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/chooser/ChooserResult$ResultType;
    }
.end annotation


# static fields
.field public static final whitelist CHOOSER_RESULT_COPY:I = 0x1

.field public static final whitelist CHOOSER_RESULT_EDIT:I = 0x2

.field public static final whitelist CHOOSER_RESULT_SELECTED_COMPONENT:I = 0x0

.field public static final whitelist CHOOSER_RESULT_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/chooser/ChooserResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SEND_CHOOSER_RESULT:J = 0xfb44d21L


# instance fields
.field private final blacklist mIsShortcut:Z

.field private final blacklist mSelectedComponent:Landroid/content/ComponentName;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 139
    new-instance v0, Landroid/service/chooser/ChooserResult$1;

    invoke-direct {v0}, Landroid/service/chooser/ChooserResult$1;-><init>()V

    sput-object v0, Landroid/service/chooser/ChooserResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/ComponentName;Z)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "isShortcut"    # Z

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Landroid/service/chooser/ChooserResult;->mType:I

    .line 97
    iput-object p2, p0, Landroid/service/chooser/ChooserResult;->mSelectedComponent:Landroid/content/ComponentName;

    .line 98
    iput-boolean p3, p0, Landroid/service/chooser/ChooserResult;->mIsShortcut:Z

    .line 99
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/chooser/ChooserResult;->mType:I

    .line 88
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/service/chooser/ChooserResult;->mSelectedComponent:Landroid/content/ComponentName;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/chooser/ChooserResult;->mIsShortcut:Z

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/chooser/ChooserResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/chooser/ChooserResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 161
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 162
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2e

    .line 163
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/chooser/ChooserResult;

    .line 164
    .local v2, "that":Landroid/service/chooser/ChooserResult;
    iget v3, p0, Landroid/service/chooser/ChooserResult;->mType:I

    iget v4, v2, Landroid/service/chooser/ChooserResult;->mType:I

    if-ne v3, v4, :cond_2c

    iget-boolean v3, p0, Landroid/service/chooser/ChooserResult;->mIsShortcut:Z

    iget-boolean v4, v2, Landroid/service/chooser/ChooserResult;->mIsShortcut:Z

    if-ne v3, v4, :cond_2c

    iget-object v3, p0, Landroid/service/chooser/ChooserResult;->mSelectedComponent:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/service/chooser/ChooserResult;->mSelectedComponent:Landroid/content/ComponentName;

    .line 166
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v1

    .line 164
    :goto_2d
    return v0

    .line 162
    .end local v2    # "that":Landroid/service/chooser/ChooserResult;
    :cond_2e
    :goto_2e
    return v1
.end method

.method public whitelist getSelectedComponent()Landroid/content/ComponentName;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/service/chooser/ChooserResult;->mSelectedComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/service/chooser/ChooserResult;->mType:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 171
    iget v0, p0, Landroid/service/chooser/ChooserResult;->mType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/service/chooser/ChooserResult;->mSelectedComponent:Landroid/content/ComponentName;

    iget-boolean v2, p0, Landroid/service/chooser/ChooserResult;->mIsShortcut:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isShortcut()Z
    .registers 2

    .line 130
    iget-boolean v0, p0, Landroid/service/chooser/ChooserResult;->mIsShortcut:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 154
    iget v0, p0, Landroid/service/chooser/ChooserResult;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v0, p0, Landroid/service/chooser/ChooserResult;->mSelectedComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 156
    iget-boolean v0, p0, Landroid/service/chooser/ChooserResult;->mIsShortcut:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 157
    return-void
.end method
