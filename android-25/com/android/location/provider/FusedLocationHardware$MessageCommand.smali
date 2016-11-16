.class Lcom/android/location/provider/FusedLocationHardware$MessageCommand;
.super Ljava/lang/Object;
.source "FusedLocationHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/FusedLocationHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageCommand"
.end annotation


# instance fields
.field private final mCapabilities:I

.field private final mData:Ljava/lang/String;

.field private final mLocations:[Landroid/location/Location;

.field private final mSink:Lcom/android/location/provider/FusedLocationHardwareSink;

.field private final mStatus:I

.field final synthetic this$0:Lcom/android/location/provider/FusedLocationHardware;


# direct methods
.method public constructor <init>(Lcom/android/location/provider/FusedLocationHardware;Lcom/android/location/provider/FusedLocationHardwareSink;[Landroid/location/Location;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/location/provider/FusedLocationHardware;
    .param p2, "sink"    # Lcom/android/location/provider/FusedLocationHardwareSink;
    .param p3, "locations"    # [Landroid/location/Location;
    .param p4, "data"    # Ljava/lang/String;
    .param p5, "capabilities"    # I
    .param p6, "status"    # I

    #@0
    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->this$0:Lcom/android/location/provider/FusedLocationHardware;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 288
    iput-object p2, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mSink:Lcom/android/location/provider/FusedLocationHardwareSink;

    #@7
    .line 289
    iput-object p3, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mLocations:[Landroid/location/Location;

    #@9
    .line 290
    iput-object p4, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mData:Ljava/lang/String;

    #@b
    .line 291
    iput p5, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mCapabilities:I

    #@d
    .line 292
    iput p6, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mStatus:I

    #@f
    .line 287
    return-void
.end method


# virtual methods
.method public dispatchCapabilities()V
    .locals 2

    #@0
    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mSink:Lcom/android/location/provider/FusedLocationHardwareSink;

    #@2
    iget v1, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mCapabilities:I

    #@4
    invoke-virtual {v0, v1}, Lcom/android/location/provider/FusedLocationHardwareSink;->onCapabilities(I)V

    #@7
    .line 303
    return-void
.end method

.method public dispatchDiagnosticData()V
    .locals 2

    #@0
    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mSink:Lcom/android/location/provider/FusedLocationHardwareSink;

    #@2
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mData:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/location/provider/FusedLocationHardwareSink;->onDiagnosticDataAvailable(Ljava/lang/String;)V

    #@7
    .line 299
    return-void
.end method

.method public dispatchLocation()V
    .locals 2

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mSink:Lcom/android/location/provider/FusedLocationHardwareSink;

    #@2
    iget-object v1, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mLocations:[Landroid/location/Location;

    #@4
    invoke-virtual {v0, v1}, Lcom/android/location/provider/FusedLocationHardwareSink;->onLocationAvailable([Landroid/location/Location;)V

    #@7
    .line 295
    return-void
.end method

.method public dispatchStatus()V
    .locals 2

    #@0
    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mSink:Lcom/android/location/provider/FusedLocationHardwareSink;

    #@2
    iget v1, p0, Lcom/android/location/provider/FusedLocationHardware$MessageCommand;->mStatus:I

    #@4
    invoke-virtual {v0, v1}, Lcom/android/location/provider/FusedLocationHardwareSink;->onStatusChanged(I)V

    #@7
    .line 307
    return-void
.end method
