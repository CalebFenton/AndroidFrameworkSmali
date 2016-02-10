.class public final Landroid/com/google/android/gtalkservice/ConnectionError;
.super Ljava/lang/Object;
.source "ConnectionError.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/com/google/android/gtalkservice/ConnectionError$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/com/google/android/gtalkservice/ConnectionError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mError:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 162
    new-instance v0, Landroid/com/google/android/gtalkservice/ConnectionError$1;

    #@2
    invoke-direct {v0}, Landroid/com/google/android/gtalkservice/ConnectionError$1;-><init>()V

    #@5
    .line 161
    sput-object v0, Landroid/com/google/android/gtalkservice/ConnectionError;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/com/google/android/gtalkservice/ConnectionError;->mError:I

    #@9
    .line 71
    return-void
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    #@0
    .prologue
    .line 115
    packed-switch p0, :pswitch_data_0

    #@3
    .line 144
    :pswitch_0
    const-string/jumbo v0, "NO ERROR"

    #@6
    return-object v0

    #@7
    .line 117
    :pswitch_1
    const-string/jumbo v0, "NO NETWORK"

    #@a
    return-object v0

    #@b
    .line 120
    :pswitch_2
    const-string/jumbo v0, "CONNECTION FAILED"

    #@e
    return-object v0

    #@f
    .line 123
    :pswitch_3
    const-string/jumbo v0, "UNKNOWN HOST"

    #@12
    return-object v0

    #@13
    .line 126
    :pswitch_4
    const-string/jumbo v0, "AUTH FAILED"

    #@16
    return-object v0

    #@17
    .line 129
    :pswitch_5
    const-string/jumbo v0, "AUTH EXPIRED"

    #@1a
    return-object v0

    #@1b
    .line 132
    :pswitch_6
    const-string/jumbo v0, "HEARTBEAT TIMEOUT"

    #@1e
    return-object v0

    #@1f
    .line 135
    :pswitch_7
    const-string/jumbo v0, "SERVER FAILED"

    #@22
    return-object v0

    #@23
    .line 138
    :pswitch_8
    const-string/jumbo v0, "SERVER REJECT - RATE LIMIT"

    #@26
    return-object v0

    #@27
    .line 141
    :pswitch_9
    const-string/jumbo v0, "UNKNOWN"

    #@2a
    return-object v0

    #@2b
    .line 115
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 158
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 100
    iget v0, p0, Landroid/com/google/android/gtalkservice/ConnectionError;->mError:I

    #@2
    invoke-static {v0}, Landroid/com/google/android/gtalkservice/ConnectionError;->toString(I)Ljava/lang/String;

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
    .line 154
    iget v0, p0, Landroid/com/google/android/gtalkservice/ConnectionError;->mError:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 153
    return-void
.end method
