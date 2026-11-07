.class public Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;
.super Ljava/lang/Object;
.source "AppLocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AppLocaleStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppLocaleResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;
    }
.end annotation


# instance fields
.field public blacklist mAppSupportedLocales:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mLocaleStatus:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;Ljava/util/HashSet;)V
    .registers 3
    .param p1, "localeStatus"    # Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;",
            "Ljava/util/HashSet<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p2, "appSupportedLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mLocaleStatus:Lcom/android/internal/app/AppLocaleStore$AppLocaleResult$LocaleStatus;

    .line 171
    iput-object p2, p0, Lcom/android/internal/app/AppLocaleStore$AppLocaleResult;->mAppSupportedLocales:Ljava/util/HashSet;

    .line 172
    return-void
.end method
