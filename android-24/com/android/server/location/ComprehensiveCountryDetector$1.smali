.class Lcom/android/server/location/ComprehensiveCountryDetector$1;
.super Ljava/lang/Object;
.source "ComprehensiveCountryDetector.java"

# interfaces
.implements Landroid/location/CountryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/ComprehensiveCountryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ComprehensiveCountryDetector;


# direct methods
.method constructor <init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/ComprehensiveCountryDetector;

    #@0
    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onCountryDetected(Landroid/location/Country;)V
    .locals 3
    .param p1, "country"    # Landroid/location/Country;

    #@0
    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/location/ComprehensiveCountryDetector;->-set1(Lcom/android/server/location/ComprehensiveCountryDetector;Landroid/location/Country;)Landroid/location/Country;

    #@5
    .line 138
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #@7
    const/4 v1, 0x1

    #@8
    const/4 v2, 0x0

    #@9
    invoke-static {v0, v1, v2}, Lcom/android/server/location/ComprehensiveCountryDetector;->-wrap0(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;

    #@c
    .line 139
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$1;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    #@e
    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->-wrap2(Lcom/android/server/location/ComprehensiveCountryDetector;)V

    #@11
    .line 134
    return-void
.end method
