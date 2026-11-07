.class Landroid/icu/impl/CalendarAstronomer$2;
.super Ljava/lang/Object;
.source "CalendarAstronomer.java"

# interfaces
.implements Landroid/icu/impl/CalendarAstronomer$AngleFunc;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/CalendarAstronomer;->getMoonTime(DZ)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/icu/impl/CalendarAstronomer;


# direct methods
.method constructor blacklist <init>(Landroid/icu/impl/CalendarAstronomer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/icu/impl/CalendarAstronomer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 626
    iput-object p1, p0, Landroid/icu/impl/CalendarAstronomer$2;->this$0:Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist eval()D
    .registers 3

    .line 628
    iget-object v0, p0, Landroid/icu/impl/CalendarAstronomer$2;->this$0:Landroid/icu/impl/CalendarAstronomer;

    invoke-virtual {v0}, Landroid/icu/impl/CalendarAstronomer;->getMoonAge()D

    move-result-wide v0

    return-wide v0
.end method
