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


# instance fields
.field private final mKeyCode:I

.field private final mQueryActionMsg:Ljava/lang/String;

.field private final mSuggestActionMsg:Ljava/lang/String;

.field private final mSuggestActionMsgColumn:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 404
    sget-object v1, Lcom/android/internal/R$styleable;->SearchableActionKey:[I

    #@6
    .line 403
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@9
    move-result-object v0

    #@a
    .line 406
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    #@d
    move-result v1

    #@e
    iput v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    #@10
    .line 409
    const/4 v1, 0x1

    #@11
    .line 408
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    #@17
    .line 411
    const/4 v1, 0x2

    #@18
    .line 410
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    iput-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    #@1e
    .line 413
    const/4 v1, 0x3

    #@1f
    .line 412
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    #@25
    .line 414
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@28
    .line 417
    iget v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    #@2a
    if-nez v1, :cond_0

    #@2c
    .line 418
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2e
    const-string/jumbo v2, "No keycode."

    #@31
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 419
    :cond_0
    iget-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    #@37
    if-nez v1, :cond_1

    #@39
    .line 420
    iget-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    #@3b
    if-nez v1, :cond_1

    #@3d
    .line 421
    iget-object v1, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    #@3f
    if-nez v1, :cond_1

    #@41
    .line 422
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@43
    const-string/jumbo v2, "No message information."

    #@46
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@49
    throw v1

    #@4a
    .line 402
    :cond_1
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    #@9
    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    #@f
    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    #@15
    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    #@1b
    .line 433
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/SearchableInfo$ActionKeyInfo;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/SearchableInfo$ActionKeyInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 473
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getKeyCode()I
    .locals 1

    #@0
    .prologue
    .line 445
    iget v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    #@2
    return v0
.end method

.method public getQueryActionMsg()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 453
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSuggestActionMsg()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 461
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSuggestActionMsgColumn()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 469
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 477
    iget v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mKeyCode:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 478
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mQueryActionMsg:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 479
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsg:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 480
    iget-object v0, p0, Landroid/app/SearchableInfo$ActionKeyInfo;->mSuggestActionMsgColumn:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 476
    return-void
.end method
