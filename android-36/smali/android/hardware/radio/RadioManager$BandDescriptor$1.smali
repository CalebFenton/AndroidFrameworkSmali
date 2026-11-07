.class Landroid/hardware/radio/RadioManager$BandDescriptor$1;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager$BandDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/RadioManager$BandDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioManager$BandDescriptor;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 717
    invoke-static {p1}, Landroid/hardware/radio/RadioManager$BandDescriptor;->-$$Nest$smlookupTypeFromParcel(Landroid/os/Parcel;)I

    move-result v0

    .line 718
    .local v0, "type":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_2e

    .line 726
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported band: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 721
    :pswitch_21
    new-instance v2, Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    invoke-direct {v2, p1, v1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager-IA;)V

    return-object v2

    .line 724
    :pswitch_27
    new-instance v2, Landroid/hardware/radio/RadioManager$AmBandDescriptor;

    invoke-direct {v2, p1, v1}, Landroid/hardware/radio/RadioManager$AmBandDescriptor;-><init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioManager-IA;)V

    return-object v2

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_27
        :pswitch_21
        :pswitch_21
        :pswitch_27
    .end packed-switch
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

    .line 715
    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/radio/RadioManager$BandDescriptor;
    .registers 3
    .param p1, "size"    # I

    .line 731
    new-array v0, p1, [Landroid/hardware/radio/RadioManager$BandDescriptor;

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

    .line 715
    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioManager$BandDescriptor$1;->newArray(I)[Landroid/hardware/radio/RadioManager$BandDescriptor;

    move-result-object p1

    return-object p1
.end method
