.class public final Landroid/os/Bundle;
.super Landroid/os/BaseBundle;
.source "Bundle.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Bundle$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY:Landroid/os/Bundle;

.field static final EMPTY_PARCEL:Landroid/os/Parcel;


# instance fields
.field private mAllowFds:Z

.field private mFdsKnown:Z

.field private mHasFds:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 38
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    #@5
    sput-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #@7
    .line 39
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    #@9
    sget-object v1, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    #@b
    iput-object v1, v0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    #@d
    .line 40
    sget-object v0, Landroid/os/BaseBundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    #@f
    sput-object v0, Landroid/os/Bundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    #@11
    .line 1046
    new-instance v0, Landroid/os/Bundle$1;

    #@13
    invoke-direct {v0}, Landroid/os/Bundle$1;-><init>()V

    #@16
    .line 1045
    sput-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@18
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 51
    invoke-direct {p0}, Landroid/os/BaseBundle;-><init>()V

    #@4
    .line 43
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    #@7
    .line 44
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@9
    .line 45
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    #@b
    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 92
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(I)V

    #@4
    .line 43
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    #@7
    .line 44
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@9
    .line 45
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    #@b
    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 102
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    #@4
    .line 43
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    #@7
    .line 44
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@9
    .line 45
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    #@b
    .line 104
    iget-boolean v0, p1, Landroid/os/Bundle;->mHasFds:Z

    #@d
    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    #@f
    .line 105
    iget-boolean v0, p1, Landroid/os/Bundle;->mFdsKnown:Z

    #@11
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@13
    .line 101
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 61
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;)V

    #@4
    .line 43
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    #@7
    .line 44
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@9
    .line 45
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    #@b
    .line 63
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    #@d
    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    #@10
    move-result v0

    #@11
    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    #@13
    .line 64
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@15
    .line 60
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;-><init>(Landroid/os/Parcel;I)V

    #@4
    .line 43
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    #@7
    .line 44
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@9
    .line 45
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    #@b
    .line 70
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    #@d
    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    #@10
    move-result v0

    #@11
    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    #@13
    .line 71
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@15
    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 115
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Landroid/os/BaseBundle;)V

    #@4
    .line 43
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    #@7
    .line 44
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@9
    .line 45
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    #@b
    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 82
    invoke-direct {p0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;)V

    #@4
    .line 43
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    #@7
    .line 44
    iput-boolean v1, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@9
    .line 45
    iput-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    #@b
    .line 81
    return-void
.end method

.method public static forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 124
    new-instance v0, Landroid/os/Bundle;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    #@6
    .line 125
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    .line 126
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 169
    invoke-super {p0}, Landroid/os/BaseBundle;->clear()V

    #@3
    .line 171
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    #@6
    .line 172
    const/4 v0, 0x1

    #@7
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@9
    .line 168
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 161
    new-instance v0, Landroid/os/Bundle;

    #@2
    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    #@5
    return-object v0
.end method

.method public describeContents()I
    .locals 2

    #@0
    .prologue
    .line 1063
    const/4 v0, 0x0

    #@1
    .line 1064
    .local v0, "mask":I
    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1065
    const/4 v0, 0x1

    #@8
    .line 1067
    :cond_0
    return v0
.end method

.method public filterValues()V
    .locals 4

    #@0
    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@3
    .line 262
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@5
    if-eqz v2, :cond_3

    #@7
    .line 263
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    #@c
    move-result v2

    #@d
    add-int/lit8 v0, v2, -0x1

    #@f
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    #@11
    .line 264
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@13
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    .line 265
    .local v1, "value":Ljava/lang/Object;
    invoke-static {v1}, Landroid/os/PersistableBundle;->isValidType(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 263
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@1f
    goto :goto_0

    #@20
    .line 268
    :cond_1
    instance-of v2, v1, Landroid/os/Bundle;

    #@22
    if-eqz v2, :cond_2

    #@24
    move-object v2, v1

    #@25
    .line 269
    check-cast v2, Landroid/os/Bundle;

    #@27
    invoke-virtual {v2}, Landroid/os/Bundle;->filterValues()V

    #@2a
    .line 271
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    const-string/jumbo v3, "android."

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@38
    move-result v2

    #@39
    if-nez v2, :cond_0

    #@3b
    .line 274
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@3d
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@40
    goto :goto_1

    #@41
    .line 260
    .end local v0    # "i":I
    .end local v1    # "value":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1005
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@4
    .line 1006
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1007
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 1008
    return-object v3

    #@d
    .line 1011
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 1012
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1013
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "IBinder"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1014
    return-object v3
.end method

.method public getBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 763
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@4
    .line 764
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 765
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 766
    return-object v3

    #@d
    .line 769
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 770
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 771
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "Bundle"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 772
    return-object v3
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 592
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;)B

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    #@0
    .prologue
    .line 605
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 936
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getByteArray(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 617
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;)C

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getChar(Ljava/lang/String;C)C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    #@0
    .prologue
    .line 630
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 964
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharArray(Ljava/lang/String;)[C

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 694
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 710
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 992
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 922
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 145
    invoke-super {p0}, Landroid/os/BaseBundle;->getClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 667
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    #@0
    .prologue
    .line 680
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getFloatArray(Ljava/lang/String;)[F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 978
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getFloatArray(Ljava/lang/String;)[F

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1032
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@4
    .line 1033
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 1034
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 1035
    return-object v3

    #@d
    .line 1038
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 1039
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 1040
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "IBinder"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 1041
    return-object v3
.end method

.method public getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 894
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 786
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@4
    .line 787
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 788
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 789
    return-object v3

    #@d
    .line 792
    :cond_0
    :try_start_0
    check-cast v1, Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 793
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 794
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "Parcelable"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 795
    return-object v3
.end method

.method public getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 809
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@4
    .line 810
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 811
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 812
    return-object v3

    #@d
    .line 815
    :cond_0
    :try_start_0
    check-cast v1, [Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 816
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 817
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "Parcelable[]"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 818
    return-object v3
.end method

.method public getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 832
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@4
    .line 833
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 834
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 835
    return-object v3

    #@d
    .line 838
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 839
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 840
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "ArrayList"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 841
    return-object v3
.end method

.method public getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 880
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getShort(Ljava/lang/String;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 642
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;)S

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getShort(Ljava/lang/String;S)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    #@0
    .prologue
    .line 655
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getShortArray(Ljava/lang/String;)[S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 950
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getShortArray(Ljava/lang/String;)[S

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 723
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@3
    .line 724
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .line 726
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Landroid/util/Size;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@c
    .line 727
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@d
    .line 728
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "Size"

    #@10
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@13
    .line 729
    const/4 v2, 0x0

    #@14
    return-object v2
.end method

.method public getSizeF(Ljava/lang/String;)Landroid/util/SizeF;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 743
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@3
    .line 744
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .line 746
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Landroid/util/SizeF;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@c
    .line 747
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@d
    .line 748
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "SizeF"

    #@10
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@13
    .line 749
    const/4 v2, 0x0

    #@14
    return-object v2
.end method

.method public getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 856
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@4
    .line 857
    iget-object v2, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    .line 858
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    #@c
    .line 859
    return-object v3

    #@d
    .line 862
    :cond_0
    :try_start_0
    check-cast v1, Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    #@10
    .line 863
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    #@11
    .line 864
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "SparseArray"

    #@14
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/Bundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    #@17
    .line 865
    return-object v3
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 908
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public hasFileDescriptors()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 194
    iget-boolean v8, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@3
    if-nez v8, :cond_1

    #@5
    .line 195
    const/4 v3, 0x0

    #@6
    .line 197
    .local v3, "fdFound":Z
    iget-object v8, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    #@8
    if-eqz v8, :cond_2

    #@a
    .line 198
    iget-object v8, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    #@c
    invoke-virtual {v8}, Landroid/os/Parcel;->hasFileDescriptors()Z

    #@f
    move-result v8

    #@10
    if-eqz v8, :cond_0

    #@12
    .line 199
    const/4 v3, 0x1

    #@13
    .line 250
    :cond_0
    :goto_0
    iput-boolean v3, p0, Landroid/os/Bundle;->mHasFds:Z

    #@15
    .line 251
    const/4 v8, 0x1

    #@16
    iput-boolean v8, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@18
    .line 253
    .end local v3    # "fdFound":Z
    :cond_1
    iget-boolean v8, p0, Landroid/os/Bundle;->mHasFds:Z

    #@1a
    return v8

    #@1b
    .line 203
    .restart local v3    # "fdFound":Z
    :cond_2
    iget-object v8, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@1d
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@20
    move-result v8

    #@21
    add-int/lit8 v4, v8, -0x1

    #@23
    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_0

    #@25
    .line 204
    iget-object v8, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@27
    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v6

    #@2b
    .line 205
    .local v6, "obj":Ljava/lang/Object;
    instance-of v8, v6, Landroid/os/Parcelable;

    #@2d
    if-eqz v8, :cond_3

    #@2f
    .line 206
    check-cast v6, Landroid/os/Parcelable;

    #@31
    .end local v6    # "obj":Ljava/lang/Object;
    invoke-interface {v6}, Landroid/os/Parcelable;->describeContents()I

    #@34
    move-result v8

    #@35
    and-int/lit8 v8, v8, 0x1

    #@37
    if-eqz v8, :cond_4

    #@39
    .line 208
    const/4 v3, 0x1

    #@3a
    .line 209
    goto :goto_0

    #@3b
    .line 211
    .restart local v6    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v8, v6, [Landroid/os/Parcelable;

    #@3d
    if-eqz v8, :cond_6

    #@3f
    move-object v2, v6

    #@40
    .line 212
    check-cast v2, [Landroid/os/Parcelable;

    #@42
    .line 213
    .local v2, "array":[Landroid/os/Parcelable;
    array-length v8, v2

    #@43
    add-int/lit8 v5, v8, -0x1

    #@45
    .local v5, "n":I
    :goto_2
    if-ltz v5, :cond_4

    #@47
    .line 214
    aget-object v7, v2, v5

    #@49
    .line 215
    .local v7, "p":Landroid/os/Parcelable;
    if-eqz v7, :cond_5

    #@4b
    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    #@4e
    move-result v8

    #@4f
    and-int/lit8 v8, v8, 0x1

    #@51
    if-eqz v8, :cond_5

    #@53
    .line 217
    const/4 v3, 0x1

    #@54
    .line 203
    .end local v2    # "array":[Landroid/os/Parcelable;
    .end local v5    # "n":I
    .end local v6    # "obj":Ljava/lang/Object;
    .end local v7    # "p":Landroid/os/Parcelable;
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, -0x1

    #@56
    goto :goto_1

    #@57
    .line 213
    .restart local v2    # "array":[Landroid/os/Parcelable;
    .restart local v5    # "n":I
    .restart local v6    # "obj":Ljava/lang/Object;
    .restart local v7    # "p":Landroid/os/Parcelable;
    :cond_5
    add-int/lit8 v5, v5, -0x1

    #@59
    goto :goto_2

    #@5a
    .line 221
    .end local v2    # "array":[Landroid/os/Parcelable;
    .end local v5    # "n":I
    .end local v7    # "p":Landroid/os/Parcelable;
    :cond_6
    instance-of v8, v6, Landroid/util/SparseArray;

    #@5c
    if-eqz v8, :cond_8

    #@5e
    move-object v0, v6

    #@5f
    .line 223
    check-cast v0, Landroid/util/SparseArray;

    #@61
    .line 224
    .local v0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    #@64
    move-result v8

    #@65
    add-int/lit8 v5, v8, -0x1

    #@67
    .restart local v5    # "n":I
    :goto_4
    if-ltz v5, :cond_4

    #@69
    .line 225
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@6c
    move-result-object v7

    #@6d
    check-cast v7, Landroid/os/Parcelable;

    #@6f
    .line 226
    .restart local v7    # "p":Landroid/os/Parcelable;
    if-eqz v7, :cond_7

    #@71
    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    #@74
    move-result v8

    #@75
    and-int/lit8 v8, v8, 0x1

    #@77
    if-eqz v8, :cond_7

    #@79
    .line 228
    const/4 v3, 0x1

    #@7a
    .line 229
    goto :goto_3

    #@7b
    .line 224
    :cond_7
    add-int/lit8 v5, v5, -0x1

    #@7d
    goto :goto_4

    #@7e
    .line 232
    .end local v0    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    .end local v5    # "n":I
    .end local v7    # "p":Landroid/os/Parcelable;
    :cond_8
    instance-of v8, v6, Ljava/util/ArrayList;

    #@80
    if-eqz v8, :cond_4

    #@82
    move-object v1, v6

    #@83
    .line 233
    check-cast v1, Ljava/util/ArrayList;

    #@85
    .line 236
    .local v1, "array":Ljava/util/ArrayList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@88
    move-result v8

    #@89
    if-nez v8, :cond_4

    #@8b
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8e
    move-result-object v8

    #@8f
    instance-of v8, v8, Landroid/os/Parcelable;

    #@91
    if-eqz v8, :cond_4

    #@93
    .line 237
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@96
    move-result v8

    #@97
    add-int/lit8 v5, v8, -0x1

    #@99
    .restart local v5    # "n":I
    :goto_5
    if-ltz v5, :cond_4

    #@9b
    .line 238
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9e
    move-result-object v7

    #@9f
    check-cast v7, Landroid/os/Parcelable;

    #@a1
    .line 239
    .restart local v7    # "p":Landroid/os/Parcelable;
    if-eqz v7, :cond_9

    #@a3
    invoke-interface {v7}, Landroid/os/Parcelable;->describeContents()I

    #@a6
    move-result v8

    #@a7
    and-int/lit8 v8, v8, 0x1

    #@a9
    if-eqz v8, :cond_9

    #@ab
    .line 241
    const/4 v3, 0x1

    #@ac
    .line 242
    goto :goto_3

    #@ad
    .line 237
    :cond_9
    add-int/lit8 v5, v5, -0x1

    #@af
    goto :goto_5
.end method

.method public putAll(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@3
    .line 182
    invoke-virtual {p1}, Landroid/os/Bundle;->unparcel()V

    #@6
    .line 183
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@8
    iget-object v1, p1, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@a
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    #@d
    .line 186
    iget-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    #@f
    iget-boolean v1, p1, Landroid/os/Bundle;->mHasFds:Z

    #@11
    or-int/2addr v0, v1

    #@12
    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    #@14
    .line 187
    iget-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@16
    if-eqz v0, :cond_0

    #@18
    iget-boolean v0, p1, Landroid/os/Bundle;->mFdsKnown:Z

    #@1a
    :goto_0
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@1c
    .line 180
    return-void

    #@1d
    .line 187
    :cond_0
    const/4 v0, 0x0

    #@1e
    goto :goto_0
.end method

.method public putBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 563
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@3
    .line 564
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 562
    return-void
.end method

.method public putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 544
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@3
    .line 545
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 543
    return-void
.end method

.method public putByte(Ljava/lang/String;B)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    #@0
    .prologue
    .line 288
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByte(Ljava/lang/String;B)V

    #@3
    .line 287
    return-void
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    #@0
    .prologue
    .line 485
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putByteArray(Ljava/lang/String;[B)V

    #@3
    .line 484
    return-void
.end method

.method public putChar(Ljava/lang/String;C)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    #@0
    .prologue
    .line 300
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putChar(Ljava/lang/String;C)V

    #@3
    .line 299
    return-void
.end method

.method public putCharArray(Ljava/lang/String;[C)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    #@0
    .prologue
    .line 509
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharArray(Ljava/lang/String;[C)V

    #@3
    .line 508
    return-void
.end method

.method public putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 336
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@3
    .line 335
    return-void
.end method

.method public putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 533
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    #@3
    .line 532
    return-void
.end method

.method public putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 461
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@3
    .line 460
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    #@0
    .prologue
    .line 324
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloat(Ljava/lang/String;F)V

    #@3
    .line 323
    return-void
.end method

.method public putFloatArray(Ljava/lang/String;[F)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    #@0
    .prologue
    .line 521
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putFloatArray(Ljava/lang/String;[F)V

    #@3
    .line 520
    return-void
.end method

.method public putIBinder(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/IBinder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 579
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@3
    .line 580
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 578
    return-void
.end method

.method public putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 436
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@3
    .line 435
    return-void
.end method

.method public putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    #@0
    .prologue
    .line 347
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@3
    .line 348
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 349
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@b
    .line 346
    return-void
.end method

.method public putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Landroid/os/Parcelable;

    #@0
    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@3
    .line 386
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 387
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@b
    .line 384
    return-void
.end method

.method public putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 400
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@3
    .line 401
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 402
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@b
    .line 399
    return-void
.end method

.method public putParcelableList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 407
    .local p2, "value":Ljava/util/List;, "Ljava/util/List<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@3
    .line 408
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 409
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@b
    .line 406
    return-void
.end method

.method public putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    #@0
    .prologue
    .line 473
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    #@3
    .line 472
    return-void
.end method

.method public putShort(Ljava/lang/String;S)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    #@0
    .prologue
    .line 312
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShort(Ljava/lang/String;S)V

    #@3
    .line 311
    return-void
.end method

.method public putShortArray(Ljava/lang/String;[S)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [S

    #@0
    .prologue
    .line 497
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putShortArray(Ljava/lang/String;[S)V

    #@3
    .line 496
    return-void
.end method

.method public putSize(Ljava/lang/String;Landroid/util/Size;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/Size;

    #@0
    .prologue
    .line 360
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@3
    .line 361
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 359
    return-void
.end method

.method public putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/util/SizeF;

    #@0
    .prologue
    .line 372
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@3
    .line 373
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 371
    return-void
.end method

.method public putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 422
    .local p2, "value":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/Parcelable;>;"
    invoke-virtual {p0}, Landroid/os/Bundle;->unparcel()V

    #@3
    .line 423
    iget-object v0, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    .line 424
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@b
    .line 421
    return-void
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 448
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    #@3
    .line 447
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1091
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;)V

    #@3
    .line 1092
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    #@5
    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    #@8
    move-result v0

    #@9
    iput-boolean v0, p0, Landroid/os/Bundle;->mHasFds:Z

    #@b
    .line 1093
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Landroid/os/Bundle;->mFdsKnown:Z

    #@e
    .line 1090
    return-void
.end method

.method public setAllowFds(Z)Z
    .locals 1
    .param p1, "allowFds"    # Z

    #@0
    .prologue
    .line 150
    iget-boolean v0, p0, Landroid/os/Bundle;->mAllowFds:Z

    #@2
    .line 151
    .local v0, "orig":Z
    iput-boolean p1, p0, Landroid/os/Bundle;->mAllowFds:Z

    #@4
    .line 152
    return v0
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/os/BaseBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    #@3
    .line 136
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1098
    :try_start_0
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    #@3
    if-eqz v0, :cond_1

    #@5
    .line 1099
    iget-object v0, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    #@7
    sget-object v1, Landroid/os/Bundle;->EMPTY_PARCEL:Landroid/os/Parcel;

    #@9
    if-ne v0, v1, :cond_0

    #@b
    .line 1100
    const-string/jumbo v0, "Bundle[EMPTY_PARCEL]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    return-object v0

    #@10
    .line 1102
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v1, "Bundle[mParcelledData.dataSize="

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 1103
    iget-object v1, p0, Landroid/os/Bundle;->mParcelledData:Landroid/os/Parcel;

    #@1e
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    #@21
    move-result v1

    #@22
    .line 1102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 1103
    const-string/jumbo v1, "]"

    #@29
    .line 1102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@30
    move-result-object v0

    #@31
    monitor-exit p0

    #@32
    return-object v0

    #@33
    .line 1106
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v1, "Bundle["

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    iget-object v1, p0, Landroid/os/Bundle;->mMap:Landroid/util/ArrayMap;

    #@41
    invoke-virtual {v1}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    const-string/jumbo v1, "]"

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    move-result-object v0

    #@54
    monitor-exit p0

    #@55
    return-object v0

    #@56
    :catchall_0
    move-exception v0

    #@57
    monitor-exit p0

    #@58
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1077
    iget-boolean v1, p0, Landroid/os/Bundle;->mAllowFds:Z

    #@2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->pushAllowFds(Z)Z

    #@5
    move-result v0

    #@6
    .line 1079
    .local v0, "oldAllowFds":Z
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/os/BaseBundle;->writeToParcelInner(Landroid/os/Parcel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 1081
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    #@c
    .line 1076
    return-void

    #@d
    .line 1080
    :catchall_0
    move-exception v1

    #@e
    .line 1081
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->restoreAllowFds(Z)V

    #@11
    .line 1080
    throw v1
.end method
