.class public final Landroid/com/google/android/gtalkservice/ConnectionState;
.super Ljava/lang/Object;
.source "ConnectionState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/com/google/android/gtalkservice/ConnectionState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/com/google/android/gtalkservice/ConnectionState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 130
    new-instance v0, Landroid/com/google/android/gtalkservice/ConnectionState$1;

    #@2
    invoke-direct {v0}, Landroid/com/google/android/gtalkservice/ConnectionState$1;-><init>()V

    #@5
    .line 129
    sput-object v0, Landroid/com/google/android/gtalkservice/ConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/com/google/android/gtalkservice/ConnectionState;->mState:I

    #@9
    .line 54
    return-void
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 98
    packed-switch p0, :pswitch_data_0

    #@3
    .line 112
    const-string/jumbo v0, "IDLE"

    #@6
    return-object v0

    #@7
    .line 100
    :pswitch_0
    const-string/jumbo v0, "RECONNECTION_SCHEDULED"

    #@a
    return-object v0

    #@b
    .line 103
    :pswitch_1
    const-string/jumbo v0, "CONNECTING"

    #@e
    return-object v0

    #@f
    .line 106
    :pswitch_2
    const-string/jumbo v0, "AUTHENTICATED"

    #@12
    return-object v0

    #@13
    .line 109
    :pswitch_3
    const-string/jumbo v0, "ONLINE"

    #@16
    return-object v0

    #@17
    .line 98
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 126
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 87
    iget v0, p0, Landroid/com/google/android/gtalkservice/ConnectionState;->mState:I

    #@2
    invoke-static {v0}, Landroid/com/google/android/gtalkservice/ConnectionState;->toString(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 122
    iget v0, p0, Landroid/com/google/android/gtalkservice/ConnectionState;->mState:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 121
    return-void
.end method
