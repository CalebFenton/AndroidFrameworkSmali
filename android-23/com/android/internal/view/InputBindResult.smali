.class public final Lcom/android/internal/view/InputBindResult;
.super Ljava/lang/Object;
.source "InputBindResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/InputBindResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/view/InputBindResult;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "InputBindResult"


# instance fields
.field public final channel:Landroid/view/InputChannel;

.field public final id:Ljava/lang/String;

.field public final method:Lcom/android/internal/view/IInputMethodSession;

.field public final sequence:I

.field public final userActionNotificationSequenceNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 109
    new-instance v0, Lcom/android/internal/view/InputBindResult$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/view/InputBindResult$1;-><init>()V

    #@5
    .line 108
    sput-object v0, Lcom/android/internal/view/InputBindResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 27
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0}, Lcom/android/internal/view/IInputMethodSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodSession;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    #@d
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 68
    sget-object v0, Landroid/view/InputChannel;->CREATOR:Landroid/os/Parcelable$Creator;

    #@15
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/view/InputChannel;

    #@1b
    iput-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@1d
    .line 72
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    #@23
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@26
    move-result v0

    #@27
    iput v0, p0, Lcom/android/internal/view/InputBindResult;->sequence:I

    #@29
    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@2c
    move-result v0

    #@2d
    iput v0, p0, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    #@2f
    .line 65
    return-void

    #@30
    .line 70
    :cond_0
    const/4 v0, 0x0

    #@31
    iput-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@33
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;Ljava/lang/String;II)V
    .locals 0
    .param p1, "_method"    # Lcom/android/internal/view/IInputMethodSession;
    .param p2, "_channel"    # Landroid/view/InputChannel;
    .param p3, "_id"    # Ljava/lang/String;
    .param p4, "_sequence"    # I
    .param p5, "_userActionNotificationSequenceNumber"    # I

    #@0
    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 58
    iput-object p1, p0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    #@5
    .line 59
    iput-object p2, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@7
    .line 60
    iput-object p3, p0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    #@9
    .line 61
    iput p4, p0, Lcom/android/internal/view/InputBindResult;->sequence:I

    #@b
    .line 62
    iput p5, p0, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    #@d
    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@6
    invoke-virtual {v0}, Landroid/view/InputChannel;->describeContents()I

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "InputBindResult{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, " "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 80
    const-string/jumbo v1, " sequence:"

    #@22
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 80
    iget v1, p0, Lcom/android/internal/view/InputBindResult;->sequence:I

    #@28
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 81
    const-string/jumbo v1, " userActionNotificationSequenceNumber:"

    #@2f
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 81
    iget v1, p0, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    #@35
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 82
    const-string/jumbo v1, "}"

    #@3c
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    #@5
    .line 94
    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 95
    const/4 v0, 0x1

    #@a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@d
    .line 96
    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    #@f
    invoke-virtual {v0, p1, p2}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    #@12
    .line 100
    :goto_0
    iget-object v0, p0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    #@14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 101
    iget v0, p0, Lcom/android/internal/view/InputBindResult;->sequence:I

    #@19
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1c
    .line 102
    iget v0, p0, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    #@1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 92
    return-void

    #@22
    .line 98
    :cond_0
    const/4 v0, 0x0

    #@23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@26
    goto :goto_0
.end method
