.class Landroid/icu/impl/CalendarAstronomer$4;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"

# interfaces
.implements Landroid/icu/impl/CalendarAstronomer$CoordFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/CalendarAstronomer;->getMoonRiseSet(Z)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/impl/CalendarAstronomer;


# direct methods
.method constructor <init>(Landroid/icu/impl/CalendarAstronomer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/icu/impl/CalendarAstronomer;

    #@0
    .prologue
    .line 1194
    iput-object p1, p0, Landroid/icu/impl/CalendarAstronomer$4;->this$0:Landroid/icu/impl/CalendarAstronomer;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public eval()Landroid/icu/impl/CalendarAstronomer$Equatorial;
    .locals 1

    #@0
    .prologue
    .line 1195
    iget-object v0, p0, Landroid/icu/impl/CalendarAstronomer$4;->this$0:Landroid/icu/impl/CalendarAstronomer;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/CalendarAstronomer;->getMoonPosition()Landroid/icu/impl/CalendarAstronomer$Equatorial;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
