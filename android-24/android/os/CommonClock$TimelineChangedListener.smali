.class Landroid/os/CommonClock$TimelineChangedListener;
.super Landroid/os/Binder;
.source "CommonClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CommonClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimelineChangedListener"
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ICommonClockListener"


# instance fields
.field final synthetic this$0:Landroid/os/CommonClock;


# direct methods
.method private constructor <init>(Landroid/os/CommonClock;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/CommonClock;

    #@0
    .prologue
    .line 314
    iput-object p1, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    #@2
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/CommonClock;Landroid/os/CommonClock$TimelineChangedListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/CommonClock;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/os/CommonClock$TimelineChangedListener;-><init>(Landroid/os/CommonClock;)V

    #@3
    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 318
    packed-switch p1, :pswitch_data_0

    #@3
    .line 329
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@6
    move-result v2

    #@7
    return v2

    #@8
    .line 320
    :pswitch_0
    const-string/jumbo v2, "android.os.ICommonClockListener"

    #@b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    #@e
    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    #@11
    move-result-wide v0

    #@12
    .line 322
    .local v0, "timelineId":J
    iget-object v2, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    #@14
    invoke-static {v2}, Landroid/os/CommonClock;->-get0(Landroid/os/CommonClock;)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    monitor-enter v3

    #@19
    .line 323
    :try_start_0
    iget-object v2, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    #@1b
    invoke-static {v2}, Landroid/os/CommonClock;->-get2(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnTimelineChangedListener;

    #@1e
    move-result-object v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 324
    iget-object v2, p0, Landroid/os/CommonClock$TimelineChangedListener;->this$0:Landroid/os/CommonClock;

    #@23
    invoke-static {v2}, Landroid/os/CommonClock;->-get2(Landroid/os/CommonClock;)Landroid/os/CommonClock$OnTimelineChangedListener;

    #@26
    move-result-object v2

    #@27
    invoke-interface {v2, v0, v1}, Landroid/os/CommonClock$OnTimelineChangedListener;->onTimelineChanged(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    :cond_0
    monitor-exit v3

    #@2b
    .line 326
    const/4 v2, 0x1

    #@2c
    return v2

    #@2d
    .line 322
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit v3

    #@2f
    throw v2

    #@30
    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
