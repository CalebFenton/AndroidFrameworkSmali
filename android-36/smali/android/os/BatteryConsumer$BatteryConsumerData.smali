.class Landroid/os/BatteryConsumer$BatteryConsumerData;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatteryConsumerData"
.end annotation


# instance fields
.field public final blacklist layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

.field private final blacklist mCursorRow:I

.field private final blacklist mCursorWindow:Landroid/database/CursorWindow;


# direct methods
.method constructor blacklist <init>(Landroid/database/CursorWindow;ILandroid/os/BatteryConsumer$BatteryConsumerDataLayout;)V
    .registers 4
    .param p1, "cursorWindow"    # Landroid/database/CursorWindow;
    .param p2, "cursorRow"    # I
    .param p3, "layout"    # Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput-object p1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    .line 774
    iput p2, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    .line 775
    iput-object p3, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 776
    return-void
.end method

.method static blacklist create(Landroid/database/CursorWindow;Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;)Landroid/os/BatteryConsumer$BatteryConsumerData;
    .registers 5
    .param p0, "cursorWindow"    # Landroid/database/CursorWindow;
    .param p1, "layout"    # Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    .line 781
    invoke-virtual {p0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    .line 782
    .local v0, "cursorRow":I
    invoke-virtual {p0}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v1

    if-nez v1, :cond_23

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate BatteryConsumerData: too many UIDs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryConsumer"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v0, -0x1

    .line 786
    :cond_23
    new-instance v1, Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-direct {v1, p0, v0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerData;-><init>(Landroid/database/CursorWindow;ILandroid/os/BatteryConsumer$BatteryConsumerDataLayout;)V

    return-object v1
.end method


# virtual methods
.method blacklist getDouble(I)D
    .registers 4
    .param p1, "columnIndex"    # I

    .line 818
    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 819
    const-wide/16 v0, 0x0

    return-wide v0

    .line 821
    :cond_8
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getInt(I)I
    .registers 4
    .param p1, "columnIndex"    # I

    .line 804
    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 805
    const/4 v0, 0x0

    return v0

    .line 807
    :cond_7
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v0

    return v0
.end method

.method blacklist getLong(I)J
    .registers 4
    .param p1, "columnIndex"    # I

    .line 832
    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 833
    const-wide/16 v0, 0x0

    return-wide v0

    .line 835
    :cond_8
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "columnIndex"    # I

    .line 846
    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 847
    const/4 v0, 0x0

    return-object v0

    .line 849
    :cond_7
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist hasValue(I)Z
    .registers 5
    .param p1, "columnIndex"    # I

    .line 790
    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    .line 791
    return v2

    .line 793
    :cond_7
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2
.end method

.method blacklist putDouble(ID)V
    .registers 6
    .param p1, "columnIndex"    # I
    .param p2, "value"    # D

    .line 811
    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 812
    return-void

    .line 814
    :cond_6
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, p2, p3, v1, p1}, Landroid/database/CursorWindow;->putDouble(DII)Z

    .line 815
    return-void
.end method

.method blacklist putInt(II)V
    .registers 7
    .param p1, "columnIndex"    # I
    .param p2, "value"    # I

    .line 797
    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 798
    return-void

    .line 800
    :cond_6
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    int-to-long v1, p2

    iget v3, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/database/CursorWindow;->putLong(JII)Z

    .line 801
    return-void
.end method

.method blacklist putLong(IJ)V
    .registers 6
    .param p1, "columnIndex"    # I
    .param p2, "value"    # J

    .line 825
    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 826
    return-void

    .line 828
    :cond_6
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, p2, p3, v1, p1}, Landroid/database/CursorWindow;->putLong(JII)Z

    .line 829
    return-void
.end method

.method blacklist putString(ILjava/lang/String;)V
    .registers 5
    .param p1, "columnIndex"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 839
    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 840
    return-void

    .line 842
    :cond_6
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    .line 843
    return-void
.end method
