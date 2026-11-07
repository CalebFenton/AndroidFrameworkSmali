.class public interface abstract Ljavax/sip/header/DateHeader;
.super Ljava/lang/Object;
.source "DateHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final blacklist NAME:Ljava/lang/String; = "Date"


# virtual methods
.method public abstract blacklist getDate()Ljava/util/Calendar;
.end method

.method public abstract blacklist setDate(Ljava/util/Calendar;)V
.end method
