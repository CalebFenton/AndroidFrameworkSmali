.class Lcom/google/android/maps/MyLocationOverlay$NameAndDate;
.super Ljava/lang/Object;
.source "MyLocationOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MyLocationOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameAndDate"
.end annotation


# instance fields
.field public date:J

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 741
    iput-object p1, p0, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->name:Ljava/lang/String;

    #@5
    .line 742
    const-wide/high16 v0, -0x8000000000000000L

    #@7
    iput-wide v0, p0, Lcom/google/android/maps/MyLocationOverlay$NameAndDate;->date:J

    #@9
    .line 740
    return-void
.end method
