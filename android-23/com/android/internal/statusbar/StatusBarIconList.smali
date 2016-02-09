.class public Lcom/android/internal/statusbar/StatusBarIconList;
.super Ljava/lang/Object;
.source "StatusBarIconList.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/StatusBarIconList$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

.field private mSlots:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 77
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIconList$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/statusbar/StatusBarIconList$1;-><init>()V

    #@5
    .line 76
    sput-object v0, Lcom/android/internal/statusbar/StatusBarIconList;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->readFromParcel(Landroid/os/Parcel;)V

    #@6
    .line 31
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/internal/statusbar/StatusBarIconList;)V
    .locals 5
    .param p1, "that"    # Lcom/android/internal/statusbar/StatusBarIconList;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 140
    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    #@3
    if-nez v2, :cond_1

    #@5
    .line 141
    iput-object v3, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    #@7
    .line 142
    iput-object v3, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@9
    .line 139
    :cond_0
    return-void

    #@a
    .line 144
    :cond_1
    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    #@c
    array-length v0, v2

    #@d
    .line 145
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/String;

    #@f
    iput-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    #@11
    .line 146
    new-array v2, v0, [Lcom/android/internal/statusbar/StatusBarIcon;

    #@13
    iput-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@15
    .line 147
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@18
    .line 148
    iget-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    #@1a
    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    #@1c
    aget-object v4, v4, v1

    #@1e
    aput-object v4, v2, v1

    #@20
    .line 149
    iget-object v4, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@22
    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@24
    aget-object v2, v2, v1

    #@26
    if-eqz v2, :cond_2

    #@28
    iget-object v2, p1, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@2a
    aget-object v2, v2, v1

    #@2c
    invoke-virtual {v2}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    #@2f
    move-result-object v2

    #@30
    :goto_1
    aput-object v2, v4, v1

    #@32
    .line 147
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    :cond_2
    move-object v2, v3

    #@36
    .line 149
    goto :goto_1
.end method

.method public defineSlots([Ljava/lang/String;)V
    .locals 4
    .param p1, "slots"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 91
    array-length v0, p1

    #@1
    .line 92
    .local v0, "N":I
    new-array v2, v0, [Ljava/lang/String;

    #@3
    iput-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    #@5
    .line 93
    .local v2, "s":[Ljava/lang/String;
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@8
    .line 94
    aget-object v3, p1, v1

    #@a
    aput-object v3, v2, v1

    #@c
    .line 93
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .line 96
    :cond_0
    new-array v3, v0, [Lcom/android/internal/statusbar/StatusBarIcon;

    #@11
    iput-object v3, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@13
    .line 90
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 70
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    #@2
    array-length v0, v2

    #@3
    .line 156
    .local v0, "N":I
    const-string/jumbo v2, "Icon list:"

    #@6
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9
    .line 157
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@c
    .line 158
    const-string/jumbo v2, "  %2d: (%s) %s\n"

    #@f
    const/4 v3, 0x3

    #@10
    new-array v3, v3, [Ljava/lang/Object;

    #@12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v4

    #@16
    const/4 v5, 0x0

    #@17
    aput-object v4, v3, v5

    #@19
    iget-object v4, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    #@1b
    aget-object v4, v4, v1

    #@1d
    const/4 v5, 0x1

    #@1e
    aput-object v4, v3, v5

    #@20
    iget-object v4, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@22
    aget-object v4, v4, v1

    #@24
    const/4 v5, 0x2

    #@25
    aput-object v4, v3, v5

    #@27
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    #@2a
    .line 157
    add-int/lit8 v1, v1, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 154
    :cond_0
    return-void
.end method

.method public getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getSlot(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getSlotIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;

    #@0
    .prologue
    .line 100
    iget-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    #@2
    array-length v0, v2

    #@3
    .line 101
    .local v0, "N":I
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@6
    .line 102
    iget-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    #@8
    aget-object v2, v2, v1

    #@a
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 103
    return v1

    #@11
    .line 101
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 106
    :cond_1
    const/4 v2, -0x1

    #@15
    return v2
.end method

.method public getViewIndex(I)I
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 130
    const/4 v0, 0x0

    #@1
    .line 131
    .local v0, "count":I
    const/4 v1, 0x0

    #@2
    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    #@4
    .line 132
    iget-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@6
    aget-object v2, v2, v1

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 133
    add-int/lit8 v0, v0, 0x1

    #@c
    .line 131
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_0

    #@f
    .line 136
    :cond_1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    iput-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    #@6
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@9
    move-result v0

    #@a
    .line 38
    .local v0, "N":I
    if-gez v0, :cond_1

    #@c
    .line 39
    const/4 v2, 0x0

    #@d
    iput-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@f
    .line 35
    :cond_0
    return-void

    #@10
    .line 41
    :cond_1
    new-array v2, v0, [Lcom/android/internal/statusbar/StatusBarIcon;

    #@12
    iput-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@14
    .line 42
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@17
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 44
    iget-object v2, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@1f
    new-instance v3, Lcom/android/internal/statusbar/StatusBarIcon;

    #@21
    invoke-direct {v3, p1}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/Parcel;)V

    #@24
    aput-object v3, v2, v1

    #@26
    .line 42
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0
.end method

.method public removeIcon(I)V
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@2
    const/4 v1, 0x0

    #@3
    aput-object v1, v0, p1

    #@5
    .line 117
    return-void
.end method

.method public setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@2
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarIcon;->clone()Lcom/android/internal/statusbar/StatusBarIcon;

    #@5
    move-result-object v1

    #@6
    aput-object v1, v0, p1

    #@8
    .line 113
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 51
    iget-object v3, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mSlots:[Ljava/lang/String;

    #@2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    #@5
    .line 52
    iget-object v3, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 53
    const/4 v3, -0x1

    #@a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 50
    :cond_0
    return-void

    #@e
    .line 55
    :cond_1
    iget-object v3, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@10
    array-length v0, v3

    #@11
    .line 56
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 57
    const/4 v1, 0x0

    #@15
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@17
    .line 58
    iget-object v3, p0, Lcom/android/internal/statusbar/StatusBarIconList;->mIcons:[Lcom/android/internal/statusbar/StatusBarIcon;

    #@19
    aget-object v2, v3, v1

    #@1b
    .line 59
    .local v2, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v2, :cond_2

    #@1d
    .line 60
    const/4 v3, 0x0

    #@1e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 57
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 62
    :cond_2
    const/4 v3, 0x1

    #@25
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    .line 63
    invoke-virtual {v2, p1, p2}, Lcom/android/internal/statusbar/StatusBarIcon;->writeToParcel(Landroid/os/Parcel;I)V

    #@2b
    goto :goto_1
.end method
