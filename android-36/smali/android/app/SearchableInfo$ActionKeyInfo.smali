.class public Landroid/app/SearchableInfo$ActionKeyInfo;
.super Ljava/lang/Object;
.source "SearchableInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchableInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionKeyInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/SearchableInfo$ActionKeyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mKeyCode:I

.field private final greylist-max-o mQueryActionMsg:Ljava/lang/String;

.field private final greylist-max-o mSuggestActionMsg:Ljava/lang/String;

.field private final greylist-max-o mSuggestActionMsgColumn:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 399
    new-instance v0, Landroid/app/SearchableInfo$ActionKeyInfo$1;

    invoke-direct {v0}, Landroid/app/SearchableInfo$ActionKeyInfo$1;-><init>()V

    sput-object v0, Landroid/app/SearchableInfo$ActionKeyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    sget-object v0, Lcom/android/internal/R$styleable;->SearchableActionKey:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 422
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    .line 424
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    .line 426
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    .line 428
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    .line 430
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 433
    iget v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    if-eqz v1, :cond_42

    .line 435
    iget-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    if-nez v1, :cond_41

    iget-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    if-nez v1, :cond_41

    iget-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    if-eqz v1, :cond_39

    goto :goto_41

    .line 438
    :cond_39
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No message information."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 440
    :cond_41
    :goto_41
    return-void

    .line 434
    :cond_42
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No keycode."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    .line 452
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    .line 454
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/SearchableInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/SearchableInfo$ActionKeyInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getKeyCode()I
    .registers 2

    .line 461
    iget v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    return v0
.end method

.method public greylist getQueryActionMsg()Ljava/lang/String;
    .registers 2

    .line 470
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getSuggestActionMsg()Ljava/lang/String;
    .registers 2

    .line 479
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getSuggestActionMsgColumn()Ljava/lang/String;
    .registers 2

    .line 488
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 496
    iget v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 500
    return-void
.end method
