.class Landroid/speech/RecognitionPart$1;
.super Ljava/lang/Object;
.source "RecognitionPart.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionPart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/speech/RecognitionPart;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/speech/RecognitionPart;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 375
    new-instance v0, Landroid/speech/RecognitionPart;

    invoke-direct {v0, p1}, Landroid/speech/RecognitionPart;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 367
    invoke-virtual {p0, p1}, Landroid/speech/RecognitionPart$1;->createFromParcel(Landroid/os/Parcel;)Landroid/speech/RecognitionPart;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/speech/RecognitionPart;
    .registers 3
    .param p1, "size"    # I

    .line 370
    new-array v0, p1, [Landroid/speech/RecognitionPart;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 367
    invoke-virtual {p0, p1}, Landroid/speech/RecognitionPart$1;->newArray(I)[Landroid/speech/RecognitionPart;

    move-result-object p1

    return-object p1
.end method
