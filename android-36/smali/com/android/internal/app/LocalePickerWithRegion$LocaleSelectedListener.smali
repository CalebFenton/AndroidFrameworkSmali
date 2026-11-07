.class public interface abstract Lcom/android/internal/app/LocalePickerWithRegion$LocaleSelectedListener;
.super Ljava/lang/Object;
.source "LocalePickerWithRegion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocalePickerWithRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocaleSelectedListener"
.end annotation


# virtual methods
.method public abstract blacklist onLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
.end method

.method public blacklist onParentLocaleSelected(Lcom/android/internal/app/LocaleStore$LocaleInfo;)V
    .registers 2
    .param p1, "locale"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 80
    return-void
.end method
