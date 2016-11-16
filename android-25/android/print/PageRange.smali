.class public final Landroid/print/PageRange;
.super Ljava/lang/Object;
.source "PageRange.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PageRange$1;
    }
.end annotation


# static fields
.field public static final ALL_PAGES:Landroid/print/PageRange;

.field public static final ALL_PAGES_ARRAY:[Landroid/print/PageRange;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PageRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnd:I

.field private final mStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 33
    new-instance v0, Landroid/print/PageRange;

    #@3
    const v1, 0x7fffffff

    #@6
    invoke-direct {v0, v2, v1}, Landroid/print/PageRange;-><init>(II)V

    #@9
    sput-object v0, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    #@b
    .line 36
    const/4 v0, 0x1

    #@c
    new-array v0, v0, [Landroid/print/PageRange;

    #@e
    sget-object v1, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    #@10
    aput-object v1, v0, v2

    #@12
    sput-object v0, Landroid/print/PageRange;->ALL_PAGES_ARRAY:[Landroid/print/PageRange;

    #@14
    .line 166
    new-instance v0, Landroid/print/PageRange$1;

    #@16
    invoke-direct {v0}, Landroid/print/PageRange$1;-><init>()V

    #@19
    .line 165
    sput-object v0, Landroid/print/PageRange;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    .line 28
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    if-gez p1, :cond_0

    #@5
    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "start cannot be less than zero."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 54
    :cond_0
    if-gez p2, :cond_1

    #@10
    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v1, "end cannot be less than zero."

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 57
    :cond_1
    if-le p1, p2, :cond_2

    #@1b
    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v1, "start must be lesser than end."

    #@20
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 60
    :cond_2
    iput p1, p0, Landroid/print/PageRange;->mStart:I

    #@26
    .line 61
    iput p2, p0, Landroid/print/PageRange;->mEnd:I

    #@28
    .line 50
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v0, v1}, Landroid/print/PageRange;-><init>(II)V

    #@b
    .line 64
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PageRange;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/print/PageRange;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 2
    .param p1, "pageIndex"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 95
    iget v1, p0, Landroid/print/PageRange;->mStart:I

    #@3
    if-lt p1, v1, :cond_0

    #@5
    iget v1, p0, Landroid/print/PageRange;->mEnd:I

    #@7
    if-gt p1, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 112
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 132
    if-ne p0, p1, :cond_0

    #@4
    .line 133
    return v4

    #@5
    .line 135
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 136
    return v3

    #@8
    .line 138
    :cond_1
    invoke-virtual {p0}, Landroid/print/PageRange;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 139
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 141
    check-cast v0, Landroid/print/PageRange;

    #@16
    .line 142
    .local v0, "other":Landroid/print/PageRange;
    iget v1, p0, Landroid/print/PageRange;->mEnd:I

    #@18
    iget v2, v0, Landroid/print/PageRange;->mEnd:I

    #@1a
    if-eq v1, v2, :cond_3

    #@1c
    .line 143
    return v3

    #@1d
    .line 145
    :cond_3
    iget v1, p0, Landroid/print/PageRange;->mStart:I

    #@1f
    iget v2, v0, Landroid/print/PageRange;->mStart:I

    #@21
    if-eq v1, v2, :cond_4

    #@23
    .line 146
    return v3

    #@24
    .line 148
    :cond_4
    return v4
.end method

.method public getEnd()I
    .locals 1

    #@0
    .prologue
    .line 83
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    #@2
    return v0
.end method

.method public getSize()I
    .locals 2

    #@0
    .prologue
    .line 107
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    #@2
    iget v1, p0, Landroid/print/PageRange;->mStart:I

    #@4
    sub-int/2addr v0, v1

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    return v0
.end method

.method public getStart()I
    .locals 1

    #@0
    .prologue
    .line 74
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 123
    const/16 v0, 0x1f

    #@2
    .line 125
    .local v0, "prime":I
    iget v2, p0, Landroid/print/PageRange;->mEnd:I

    #@4
    add-int/lit8 v1, v2, 0x1f

    #@6
    .line 126
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@8
    iget v3, p0, Landroid/print/PageRange;->mStart:I

    #@a
    add-int v1, v2, v3

    #@c
    .line 127
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 153
    iget v1, p0, Landroid/print/PageRange;->mStart:I

    #@2
    if-nez v1, :cond_0

    #@4
    iget v1, p0, Landroid/print/PageRange;->mEnd:I

    #@6
    const v2, 0x7fffffff

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 154
    const-string/jumbo v1, "PageRange[<all pages>]"

    #@e
    return-object v1

    #@f
    .line 156
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    .line 157
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PageRange["

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 158
    iget v2, p0, Landroid/print/PageRange;->mStart:I

    #@1d
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 159
    const-string/jumbo v2, " - "

    #@24
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 160
    iget v2, p0, Landroid/print/PageRange;->mEnd:I

    #@2a
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 161
    const-string/jumbo v2, "]"

    #@31
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 117
    iget v0, p0, Landroid/print/PageRange;->mStart:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 118
    iget v0, p0, Landroid/print/PageRange;->mEnd:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 116
    return-void
.end method
