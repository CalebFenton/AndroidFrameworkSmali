.class Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadedWidgetState"
.end annotation


# instance fields
.field final hostTag:I

.field final providerTag:I

.field final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field final widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appwidget/AppWidgetServiceImpl;
    .param p2, "widget"    # Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    .param p3, "hostTag"    # I
    .param p4, "providerTag"    # I

    #@0
    .prologue
    .line 3558
    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 3559
    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->widget:Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    #@7
    .line 3560
    iput p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->hostTag:I

    #@9
    .line 3561
    iput p4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$LoadedWidgetState;->providerTag:I

    #@b
    .line 3558
    return-void
.end method
