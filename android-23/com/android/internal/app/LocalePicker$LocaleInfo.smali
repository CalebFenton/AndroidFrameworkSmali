.class public Lcom/android/internal/app/LocalePicker$LocaleInfo;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocalePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocaleInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final sCollator:Ljava/text/Collator;


# instance fields
.field label:Ljava/lang/String;

.field locale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 57
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->sCollator:Ljava/text/Collator;

    #@6
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    #@5
    .line 64
    iput-object p2, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    #@7
    .line 62
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I
    .locals 3
    .param p1, "another"    # Lcom/android/internal/app/LocalePicker$LocaleInfo;

    #@0
    .prologue
    .line 82
    sget-object v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->sCollator:Ljava/text/Collator;

    #@2
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    #@4
    iget-object v2, p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    #@6
    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 81
    check-cast p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    #@2
    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->compareTo(Lcom/android/internal/app/LocalePicker$LocaleInfo;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    #@2
    return-object v0
.end method
